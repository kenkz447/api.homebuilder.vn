using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Base.Collection;
using Omi.Base.ViewModel;
using Omi.Modules.Ecommerce.Product.Entities;
using Omi.Modules.Ecommerce.Product.ServiceModel;
using Omi.Modules.Ecommerce.Product.Services;
using Omi.Modules.Ecommerce.Product.ViewModels;
using Omi.Modules.HomeBuilder.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/products")]
    public class ProductPublicController : ControllerBase
    {
        private readonly ProductService _products;
        private readonly PackageService _packages;

        public ProductPublicController(ProductService products, PackageService packages)
        {
            _products = products;
            _packages = packages;
        }

        [Route("packages/{name}")]
        public async Task<OkObjectResult> GetProductsByPackage(string name)
        {
            var package = await _packages.GetPackageByName(name);
            var products = package.EntityProducts.Select(o => o.Product).ToList();
            var pageList = new PaginatedList<ProductEntity>(products, products.Count, 1, products.Count);
            var result = new PaginationResult<ProductEntity, ProductViewModel>(pageList, entity => ProductViewModel.FromEntity(entity));

            return Ok(result);
        }

        [Route("{name}")]
        public OkObjectResult GetProduct(string name)
        {
            var entity = _products.GetProduct(new ProductFilterServiceModel()
            {
                Name = name
            });

            var result = ProductViewModel.FromEntity(entity);

            return Ok(result);
        }
    }
}
