using Omi.Modules.ModuleBase;
using Microsoft.Extensions.Logging;
using Omi.Modules.HomeBuilder.Services;
using Microsoft.AspNetCore.Mvc;
using Omi.Base;
using System.Threading.Tasks;
using Omi.Modules.HomeBuilder.ViewModels;
using Omi.Modules.HomeBuilder.ServiceModel;
using System.Linq;
using Omi.Modules.ModuleBase.ViewModels;
using Omi.Modules.Location.ViewModel;
using Microsoft.AspNetCore.Identity;
using Omi.Data;
using Microsoft.AspNetCore.Authorization;
using Omi.Base.ViewModel;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Extensions;
using Omi.Modules.ModuleBase.Base.ServiceModel;
using Omi.Base.Collection;

namespace Omi.Modules.HomeBuilder.Controllers
{
    public class ProjectController : BaseController
    {
        private readonly ProjectService _projectService;

        public ProjectController(
            ProjectService projectService,
            UserManager<ApplicationUser> userManager,
            ILogger<ProjectController> logger) : base(logger, userManager)
        {
            _projectService = projectService;
        }

        private ProjectViewModelExtended _emptyProjectViewModel;
        private ProjectViewModelExtended EmptyProjectViewModel
        {
            get
            {
                if (_emptyProjectViewModel != null)
                    return _emptyProjectViewModel;

                var projectStatus = _projectService.GetAllProjectStatus();
                var projectTypes = _projectService.GetAllProjectType();
                var cities = _projectService.GetAllCity();

                _emptyProjectViewModel = new ProjectViewModelExtended
                {
                    AvaliableProjectStatus = projectStatus.Select(o => TaxomonyViewModel.FromEntity(o)),
                    AvaliableProjectTypes = projectTypes.Select(o => TaxomonyViewModel.FromEntity(o)),
                    AvaliableGeographicaLocations = cities.Select(o => GeographicaLocationViewModel.FromEntity(o)),
                };

                return _emptyProjectViewModel;
            }
        }

        public BaseJsonResult GetEmptyProjectViewModel()
            => new BaseJsonResult(Base.Properties.Resources.POST_SUCCEEDED, EmptyProjectViewModel);

        public async Task<OkObjectResult> GetProject(long id)
        {
            var project = await _projectService.GetProjectById(id);
            var projectViewModel = ProjectViewModelExtended.FromEntity(project);

            var resultViewModel = projectViewModel.MergeWith(EmptyProjectViewModel);

            return Ok(projectViewModel);
        }

        [HttpPost]
        public async Task<BaseJsonResult> CreateNewProject([FromBody]ProjectViewModel viewModel)
        {
            var serviceModel = ProjectServiceModel.FromViewModel(viewModel);
            serviceModel.User = CurrentUser;

            var newProject = await _projectService.CreateNewProject(serviceModel);

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, newProject.Id);
        }

        [HttpPost]
        public async Task<BaseJsonResult> UpdateProject([FromBody]ProjectViewModel model)
        {
            var projectServiceModel = ProjectServiceModel.FromViewModel(model);
            projectServiceModel.User = CurrentUser;

            await _projectService.UpdateProjectAsync(projectServiceModel);

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, model.ProjectId);
        }

        [HttpDelete]
        public async Task<BaseJsonResult> Delete([FromBody]EntityDeleteViewModel viewModel)
        {
            var serviceModel = new DeleteServiceModel
            {
                Ids = viewModel.Ids,
                DeleteBy = CurrentUser
            };

            var result = await _projectService.DeleteProjectAsync(serviceModel);

            return new BaseJsonResult(Base.Properties.Resources.POST_SUCCEEDED, result);
        }

        public async Task<OkObjectResult> GetProjects(ProjectFilterViewModel viewModel)
        {
            var serviceModel = ProjectFilterServiceModel.FromViewModel(viewModel);
            var entities = _projectService.GetProjects(serviceModel);
            var pageList = await PaginatedList<Project>.CreateAsync(entities, serviceModel.Page, serviceModel.PageSize);
            var viewModels = new PageEntityViewModel<Project, ProjectViewModel>(pageList, entity => ProjectViewModelExtended.FromEntity(entity));

            return Ok(viewModels);
        }

        #region Public
        [AllowAnonymous]
        public async Task<OkObjectResult> GetProjectByName(string name)
        {
            var project = await _projectService.GetProjectByName(name);
            var projectViewModel = ProjectViewModelExtended.FromEntity(project);

            var resultViewModel = projectViewModel.MergeWith(EmptyProjectViewModel);

            return Ok(projectViewModel);
        }

        [AllowAnonymous]
        public OkObjectResult GetAllCity()
        {
            var cities = _projectService.GetAllCity();
            var cityViewModels = cities.Select(o => GeographicaLocationViewModel.FromEntity(o));

            return Ok(cityViewModels);
        }

        [AllowAnonymous]
        public OkObjectResult GetAllProjectStatus()
        {
            var projectStatus = _projectService.GetAllProjectStatus();
            var projectStatusViewModels = projectStatus.Select(o => TaxomonyViewModel.FromEntity(o));

            return Ok(projectStatusViewModels);
        }

        [AllowAnonymous]
        public OkObjectResult GetAllProjectTypes()
        {
            var projectTypes = _projectService.GetAllProjectType();
            var projectTypeViewModels = projectTypes.Select(o => TaxomonyViewModel.FromEntity(o));

            return Ok(projectTypeViewModels);
        }
        #endregion
    }
}