﻿using Microsoft.EntityFrameworkCore;
using Omi.Base;
using Omi.Extensions;
using Omi.Modules.Ecommerce.Product.Entities;
using Omi.Modules.Ecommerce.Product.ServiceModel;
using Omi.Modules.ModuleBase.Base.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Omi.Modules.Ecommerce.Product.Services
{
    public class ProductService
    {
        private readonly EcommerceDbContext _context;

        private IQueryable<ProductEntity> AllProduct
        {
            get
            {
                return _context.ProductEntity
                .Include(o => o.Details)
                .Include(o => o.EntityTaxonomies)
                .ThenInclude(o => o.Taxonomy)
                .ThenInclude(o => o.Details)
                .Include(o => o.EntityFiles)
                .ThenInclude(o => o.FileEntity);
            }
        }

        public ProductService(EcommerceDbContext context)
        {
            _context = context;
        }

        public IQueryable<ProductEntity> GetProducts(ProductFilterServiceModel serviceModel)
        {
            var products = this.AllProduct.FilterByServiceModel(serviceModel);

            if (!string.IsNullOrEmpty(serviceModel.Code))
                products = products.Where(o => o.Code.Contains(serviceModel.Code) || serviceModel.Code.Contains(o.Code));

            if(!string.IsNullOrEmpty(serviceModel.Title))
                products = products.Where(o => o.Details.FirstOrDefault(d => d.Title != null && (d.Title.ToLower().Contains(serviceModel.Title.ToLower()) || serviceModel.Title.ToLower().Contains(d.Title.ToLower()))) != null);

            if (!string.IsNullOrEmpty(serviceModel.Name))
                products = products.Where(o => o.Name == serviceModel.Name);

            products = products.OrderByDescending(o => o.Id);
            return products;
        }

        public ProductEntity GetProduct(ProductFilterServiceModel serviceModel)
        {
            var entities = GetProducts(serviceModel);
            return entities.FirstOrDefault();
        }

        public async Task<ProductEntity> CreateProductAsync(ProductServiceModel serviceModel, bool save = true)
        {
            var newProduct = serviceModel.Product;
            newProduct.CreateByUserId = serviceModel.User.Id;

            var entry = _context.ProductEntity.Add(newProduct);

            if(save == true)
                await _context.SaveChangesAsync();

            return entry.Entity;
        }

        public async Task<int> CreateProductAsync(IEnumerable<ProductServiceModel> serviceModels)
        {
            foreach (var serviceModel in serviceModels)
            {
                var newProduct = await CreateProductAsync(serviceModel, false);
            }
            
            return await _context.SaveChangesAsync();
        }

        public async Task<bool> UpdateProductAsync(ProductServiceModel serviceModel)
        {
            var oldProduct = await AllProduct.FirstOrDefaultAsync(o => o.Id == serviceModel.Product.Id);

            var productEntry = _context.Entry(oldProduct);

            serviceModel.Product.LastUpdateByUserId = serviceModel.User.Id;
            serviceModel.Product.LastUpdateDate = DateTime.Now;

            productEntry.CurrentValues.SetValues(serviceModel.Product);

            _context.Entry(oldProduct).Property(o => o.CreateByUserId).IsModified = false;
            _context.Entry(oldProduct).Property(o => o.CreateDate).IsModified = false;

            foreach (var newDetail in serviceModel.Product.Details)
            {
                var oldDetail = oldProduct.Details.FirstOrDefault(o => o.ForCurrentRequestLanguage());
                if (oldDetail.Language == newDetail.Language)
                {
                    newDetail.Id = oldDetail.Id;
                    _context.Entry(oldDetail).CurrentValues.SetValues(newDetail);
                }
            }

            _context.TryUpdateManyToMany(oldProduct.EntityFiles, serviceModel.Product.EntityFiles, o => o.FileEntityId);
            _context.TryUpdateManyToMany(oldProduct.EntityTaxonomies, serviceModel.Product.EntityTaxonomies, o => o.TaxonomyId);

            var updateResultCount = await _context.SaveChangesAsync();

            return updateResultCount > 0;
        }

        public async Task<bool> DeleteProductAsync(DeleteServiceModel serviceModel)
        {
            foreach (var id in serviceModel.Ids)
            {
                var oldProduct = await _context.ProductEntity.FindAsync(id);
                var productEntry = _context.Entry(oldProduct);
                productEntry.State = EntityState.Deleted;
            }

            var updateResultCount = await _context.SaveChangesAsync();

            return updateResultCount > 0;
        }
    }
}