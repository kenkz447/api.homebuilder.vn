using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Base.Collection;
using Omi.Base.ViewModel;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Modules.HomeBuilder.ServiceModel;
using Omi.Modules.HomeBuilder.Services;
using Omi.Modules.HomeBuilder.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/projects")]
    public class ProjectPublicController : ControllerBase
    {
        private readonly ProjectService _projects;
        public ProjectPublicController(ProjectService projects)
        {
            _projects = projects;
        }

        public async Task<OkObjectResult> GetProjects(ProjectFilterViewModel searchParams)
        {
            var filterModel = ProjectFilterServiceModel.FromViewModel(searchParams);
            var entities = _projects.GetProjects(filterModel);

            var pageList = await PaginatedList<Project>.CreateAsync(entities, searchParams.Page, searchParams.PageSize);
            var result = new PageEntityViewModel<Project, ProjectViewModel>(pageList, entity => ProjectViewModel.FromEntity(entity));

            return Ok(result);
        }

        [Route("{name}")]
        public async Task<OkObjectResult> GetprojectByName(string name)
        {
            var entity = await _projects.GetProjectByName(name);
            var result = ProjectViewModel.FromEntity(entity);

            return Ok(result);
        }
    }
}
