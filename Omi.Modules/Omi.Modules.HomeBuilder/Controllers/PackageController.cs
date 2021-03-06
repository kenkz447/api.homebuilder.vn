﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Omi.Base;
using Omi.Data;
using Omi.Modules.HomeBuilder.Services;
using Omi.Modules.HomeBuilder.ViewModels;
using Omi.Modules.ModuleBase;
using System.Linq;

using static Omi.Modules.HomeBuilder.Utilities.ViewModelUtilities;
using System.Threading.Tasks;
using Omi.Modules.FileAndMedia.Base;
using Omi.Modules.FileAndMedia.ViewModel;
using Omi.Modules.HomeBuilder.DbSeed;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Base.ViewModel;
using Omi.Modules.ModuleBase.ViewModels;
using Omi.Extensions;
using System.Collections.Generic;
using Omi.Base.Collection;
using Omi.Modules.ModuleBase.Base.ServiceModel;
using Omi.Modules.HomeBuilder.ServiceModel;

namespace Omi.Modules.HomeBuilder.Controllers
{
    public class PackageController : BaseController
    {
        public readonly PackageService _packageService;

        public PackageController(
            PackageService packageService,
            ILogger<PackageController> logger,
            UserManager<ApplicationUser> userManager) 
            : base(logger, userManager)
        {
            _packageService = packageService;
        }

        private PackageViewModel EmptyPackageViewModel
        {
            get
            {
                var designThemes = _packageService.GetAllDesignThemes();
                var packageIncludeItems = _packageService.GetAllPackageIncludedItem();
                var packageFurnitureIncludeItems = _packageService.GetAllFurnitureIncludeItem();
                var houseStyle = _packageService.GetAllHouseStyles();

                var result = new PackageViewModel
                {
                    AvaliableDesignThemes = designThemes.Select(o => TaxomonyViewModel.FromEntity(o)),
                    AvaliablePackageIncludedItems = packageIncludeItems.Select(o => TaxomonyViewModel.FromEntity(o)),
                    AvaliableHouseStyles = houseStyle.Select(o => TaxomonyViewModel.FromEntity(o)),
                    AvaliablePackageFurnitureIncludedItems = packageFurnitureIncludeItems.Select(o => TaxomonyViewModel.FromEntity(o))
                };

                return result;
            }
        }

        public BaseJsonResult GetEmptyPackageViewModel()         
            => new BaseJsonResult(Base.Properties.Resources.POST_SUCCEEDED, EmptyPackageViewModel);

        [AllowAnonymous]
        public async Task<BaseJsonResult> GetPackageViewModel(long id)
        {
            var package = await _packageService.GetPackageById(id);

            var viewModel = PackageViewModel.FromEntity(package);
            viewModel = viewModel.MergeWith(EmptyPackageViewModel);

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, viewModel);
        }

        [AllowAnonymous]
        public async Task<BaseJsonResult> GetNextAndPrevPackage(long packageId)
        {
            var nextPackage = await _packageService.GetNextPackage(packageId);
            var prevPackage = await _packageService.GetPrevPackage(packageId);

            var next = PackageViewModel.FromEntity(nextPackage);
            var prev = PackageViewModel.FromEntity(prevPackage);
            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, new { next, prev});
        }

        [AllowAnonymous]
        public BaseJsonResult GetPackageByIds(IEnumerable<long> ids)
        {
            var packages = _packageService.GetPackageByIds(ids);
            var result = packages.Select(package => PackageViewModel.FromEntity(package));
            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, result);
        }

        [AllowAnonymous]
        public async Task<BaseJsonResult> GetPackage(long packageName)
        {
            var package = await _packageService.GetPackageById(packageName);
            var viewModel = PackageViewModel.FromEntity(package);
            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, viewModel);
        }

        [AllowAnonymous]
        public BaseJsonResult GetDesignThemes()
        {
            var designTheme = _packageService.GetAllDesignThemes();
            var result = designTheme.Select(o => TaxomonyViewModel.FromEntity(o));

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, result);
        }

        [AllowAnonymous]
        public BaseJsonResult GetHouseStyles()
        {
            var designTheme = _packageService.GetAllHouseStyles();
            var result = designTheme.Select(o => TaxomonyViewModel.FromEntity(o));

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, result);
        }

        [AllowAnonymous]
        public async Task<ObjectResult> GetPackages(PackageFilterViewModel viewModel)
        {
            var serviceModel = PackageFilterServiceModel.FromViewModel(viewModel);

            var entities = _packageService.GetPackages(serviceModel);

            if (string.IsNullOrEmpty(viewModel.SortField) == false)
            {
                if (viewModel.SortField == "title")
                    entities = (viewModel.SortOrder == "ascend") ? entities.OrderBy(o => o.Details.FirstOrDefault().Title) : entities.OrderByDescending(o => o.Details.FirstOrDefault().Title);
            }

            var result = await PaginatedList<Package>.CreateAsync(entities, serviceModel.Page, serviceModel.PageSize);
            var viewModels = new PageEntityViewModel<Package, PackageViewModel>(result, o => PackageViewModel.FromEntity(o));
            return Ok(viewModels);
        }

        [HttpPost]
        public async Task<BaseJsonResult> CreateNewPackage([FromBody]PackageUpdateViewModel viewModel)
        {
            var packageServiceModel = viewModel.ToPackageServiceModel();
            packageServiceModel.User = CurrentUser;

            var newPackage = await _packageService.CreateNewPackage(packageServiceModel);

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, newPackage.Id);
        }

        [HttpPost]
        public async Task<BaseJsonResult> UpdatePackage([FromBody]PackageUpdateViewModel model)
        {
            if (!ModelState.IsValid)
                return new ModelStateErrorJsonResult(ModelState.Values);

            var packageServiceModel = model.ToPackageServiceModel();
            packageServiceModel.User = CurrentUser;

            await _packageService.UpdatePackageAsync(packageServiceModel);

            return new BaseJsonResult(Omi.Base.Properties.Resources.POST_SUCCEEDED, model.Id);
        }

        [HttpDelete]
        public async Task<BaseJsonResult> Delete([FromBody]EntityDeleteViewModel viewModel)
        {
            var serviceModel = new DeleteServiceModel
            {
                Ids = viewModel.Ids,
                DeleteBy = CurrentUser
            };

            var result = await _packageService.DeleteProductAsync(serviceModel);

            return new BaseJsonResult(Base.Properties.Resources.POST_SUCCEEDED, result);
        }
    }
}
