﻿using Microsoft.EntityFrameworkCore;
using Omi.Modular;
using Omi.Modules.HomeBuilder.Entities;

namespace Omi.Modules.HomeBuilder
{
    public class HomeBuilderModelBuilder : ICustomModelBuilder
    {
        public void Build(ModelBuilder builder)
        {
            builder.Entity<Package>()
                .HasMany(o => o.Details);

            builder.Entity<PackageDetail>();

            builder.Entity<PackageTaxonomy>()
                .HasKey(o => new { o.EntityId, o.TaxonomyId });

            builder.Entity<PackageFile>()
                .HasKey(o => new { o.EntityId, o.FileEntityId });

            builder.Entity<PackageProduct>()
                .HasKey(o => new { o.EntityId, o.ProductId });

            builder.Entity<Project>()
                .HasMany(o => o.Details);

            builder.Entity<ProjectDetail>();

            builder.Entity<ProjectTaxonomy>()
                .HasKey(o => new { o.EntityId, o.TaxonomyId });

            builder.Entity<ProjectFile>()
                .HasKey(o => new { o.EntityId, o.FileEntityId });

            builder.Entity<ProjectBlock>()
                .HasOne(o => o.Package)
                .WithOne(o => o.ProjectBlock)
                .HasForeignKey<ProjectBlock>(o => o.PackageId);

            builder.Entity<ProjectBlockFile>()
                .HasKey(o => new { o.EntityId, o.FileEntityId });
        }
    }
}
