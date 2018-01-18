using Microsoft.AspNetCore.Mvc;
using Omi.Extensions;
using Omi.Modules.Ecommerce.Product.Entities;
using Omi.Modules.Ecommerce.Product.ViewModels;
using Omi.Modules.FileAndMedia.Base;
using Omi.Modules.FileAndMedia.ViewModel;
using Omi.Modules.HomeBuilder.DbSeed;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Modules.ModuleBase.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Omi.Modules.HomeBuilder.ViewModels
{
    [Bind(include: new[] { "ProductId", "Quantity" })]
    public class PackageProductViewModel
    {
        public long ProductId { get; set; }
        public int Quantity { get; set; }

        public ProductViewModel ProductViewModel { get; set; }

        public static PackageProductViewModel FromEntity(PackageProduct packageProduct)
        {
            return new PackageProductViewModel
            {
                ProductId = packageProduct.ProductId,
                Quantity = packageProduct.Quantity,
                ProductViewModel = ProductViewModel.FromEntity(packageProduct.Product)
            };
        }
    }

    public class PackageViewModel : PackageUpdateViewModel
    {
        public long? ProjectBlockId { get; set; }
        public string DesignThemeLabel { get; set; }
        public string HouseTypeLabel { get; set; }

        public ProjectBlockViewModel Layout { get; set; }
        public ProjectBlockViewModel Perspective { get; set; }

        public IEnumerable<TaxomonyViewModel> PackageIncludedItems { get; set; }
        public IEnumerable<TaxomonyViewModel> PackageFurnitureIncludedItems { get; set; }

        public IEnumerable<TaxomonyViewModel> AvaliablePackageIncludedItems { get; set; }
        public IEnumerable<TaxomonyViewModel> AvaliablePackageFurnitureIncludedItems { get; set; }

        public IEnumerable<TaxomonyViewModel> AvaliableDesignThemes { get; set; }
        public IEnumerable<TaxomonyViewModel> AvaliableHouseStyles { get; set; }

        public static PackageViewModel FromEntity(Package package)
        {
            if (package == null)
                return null;

            var packageViewModel = new PackageViewModel();

            packageViewModel.Id = package.Id;
            packageViewModel.Name = package.Name;
            packageViewModel.ProjectBlockId = package.ProjectBlockId;
            packageViewModel.IsPerspective = package.IsPerspective;
            
            var detail = package.Details.FirstOrDefault();
            if(detail != null)
            {
                packageViewModel.Price = detail.Price;
                packageViewModel.Area = detail.Area;
                packageViewModel.Title = detail.Title;
                packageViewModel.SortText = detail.SortText;
            }

            var avatarFile = package.EntityFiles.FirstOrDefault(o => o.UsingType == (int)FileUsingType.Avatar);
            if(avatarFile != null)
                packageViewModel.Avatar = FileEntityInfo.FromEntity(avatarFile.FileEntity);

            var pictureFiles = package.EntityFiles.Where(o => o.UsingType == (int)FileUsingType.Picture);
            packageViewModel.Pictures = pictureFiles.Select(o => FileEntityInfo.FromEntity(o.FileEntity));
            
            var houseType = package.EntityTaxonomies.FirstOrDefault(o => o.Taxonomy.TaxonomyTypeId == HouseStyleSeed.HouseStyle.Id);
            if(houseType != null)
            {
                packageViewModel.HouseTypeId = houseType.TaxonomyId;
                packageViewModel.HouseTypeLabel = houseType.Taxonomy.Details.FirstOrDefault(o => o.ForCurrentRequestLanguage()).Label;
            }

            var designTheme = package.EntityTaxonomies.FirstOrDefault(o => o.Taxonomy.TaxonomyTypeId == DesignThemeSeed.DesignTheme.Id);
            if(designTheme != null)
            {
                packageViewModel.DesignThemeId = designTheme.TaxonomyId;
                packageViewModel.DesignThemeLabel = designTheme.Taxonomy.Details.FirstOrDefault(o => o.ForCurrentRequestLanguage()).Label;
            }

            var includedItems = package.EntityTaxonomies.Where(o => o.Taxonomy.TaxonomyTypeId == PackageIncludedSeed.PackageIncludedItem.Id);
            if(includedItems != null)
            {
                packageViewModel.PackageIncludedItemIds = includedItems.Select(o => o.TaxonomyId);
                packageViewModel.PackageIncludedItems = includedItems.Select(o => TaxomonyViewModel.FromEntity(o.Taxonomy));
            }

            var furnitureIncludedItems = package.EntityTaxonomies.Where(o => o.Taxonomy.TaxonomyTypeId == PackageFunitureIncludedSeed.PackageFunitureIncludedItem.Id);
            if (furnitureIncludedItems != null)
            {
                packageViewModel.PackageFurnitureIncludedItemIds = furnitureIncludedItems.Select(o => o.TaxonomyId);
                packageViewModel.PackageFurnitureIncludedItems = furnitureIncludedItems.Select(o => TaxomonyViewModel.FromEntity(o.Taxonomy));
            }

            packageViewModel.Products = new List<PackageProductViewModel>(package.EntityProducts.Select(o => PackageProductViewModel.FromEntity(o)));

            return packageViewModel;
        }
    }
}
