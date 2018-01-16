using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Base.Collection;
using Omi.Base.ViewModel;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Modules.HomeBuilder.ServiceModel;
using Omi.Modules.HomeBuilder.Services;
using Omi.Modules.HomeBuilder.ViewModels;
using System.Threading.Tasks;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/packages")]
    public class PackagePublicController : ControllerBase
    {
        private PackageService _services;

        public PackagePublicController(PackageService services)
        {
            _services = services;
        }

        public async Task<OkObjectResult> GetPackages(PackageFilterViewModel searchParams)
        {
            var serviceModel = PackageFilterServiceModel.FromViewModel(searchParams);
            var entities = _services.GetPackages(serviceModel);
            var pageList = await PaginatedList<Package>.CreateAsync(entities, searchParams.Page, searchParams.PageSize);
            var result = new PageEntityViewModel<Package, PackageViewModel>(pageList, entity => PackageViewModel.FromEntity(entity));

            return Ok(result);
        }

        [Route("{name}")]
        public async Task<OkObjectResult> GetPackage(string name)
        {
            var entity = await _services.GetPackageByName(name);
            var result = PackageViewModel.FromEntity(entity);

            return Ok(result);
        }
    }
}