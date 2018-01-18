using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Base.Collection;
using Omi.Base.ViewModel;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Modules.HomeBuilder.ServiceModel;
using Omi.Modules.HomeBuilder.Services;
using Omi.Modules.HomeBuilder.ViewModels;
using System.Linq;
using System.Threading.Tasks;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/packages")]
    public class PackagePublicController : ControllerBase
    {
        private PackageService _services;
        private ProjectService _projecst;

        public PackagePublicController(PackageService services, ProjectService projects)
        {
            _services = services;
            _projecst = projects;
        }

        public async Task<OkObjectResult> GetPackages(PackageFilterViewModel searchParams)
        {
            var serviceModel = PackageFilterServiceModel.FromViewModel(searchParams);
            var entities = _services.GetPackages(serviceModel);
            var pageList = await PaginatedList<Package>.CreateAsync(entities, searchParams.Page, searchParams.PageSize);
            var result = new PageEntityViewModel<Package, PackageViewModel>(pageList, entity => PackageViewModel.FromEntity(entity));

            return Ok(result);
        }

        [Route("room-layouts/{id}")]
        public OkObjectResult GetPackagesByRoomLayout(long id)
        {
            var roomLayout = _projecst.GetProjectBlock(id);
            var rooomPerspectives = roomLayout.Children;
            var packages = rooomPerspectives.Select(o => o.Package).ToList();
            var pageList = new PaginatedList<Package>(packages, packages.Count, 1, packages.Count);

            var result = new PageEntityViewModel<Package, PackageViewModel>(pageList, entity => PackageViewModel.FromEntity(entity));
            return Ok(result);
        }

        [Route("{name}")]
        public async Task<OkObjectResult> GetPackage(string name)
        {
            var entity = await _services.GetPackageByName(name);
            var result = PackageViewModel.FromEntity(entity);

            if (result.ProjectBlockId != null)
            {
                var layoutBlock = _projecst.GetParentOfProjectBlock(result.ProjectBlockId ?? 0);
                result.Layout = ProjectBlockViewModelExtension.FromEnitity(layoutBlock);

                var perspective = _projecst.GetProjectBlock(result.ProjectBlockId ?? 0);
                result.Perspective = ProjectBlockViewModelExtension.FromEnitity(perspective);
            }

            return Ok(result);
        }
    }
}