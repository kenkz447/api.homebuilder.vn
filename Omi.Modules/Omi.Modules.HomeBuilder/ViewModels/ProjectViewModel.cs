﻿using Omi.Modules.FileAndMedia.Base;
using Omi.Modules.FileAndMedia.ViewModel;
using Omi.Modules.HomeBuilder.DbSeed;
using Omi.Modules.HomeBuilder.Entities;
using Omi.Modules.Location.ViewModel;
using Omi.Modules.ModuleBase.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Omi.Modules.HomeBuilder.ViewModels
{
    public class ProjectViewModel
    {
        public long Id { get; set; }

        public long ProjectId { get; set; }

        public string Name { get; set; }

        [Required]
        public string Title { get; set; }

        public string Investor { get; set; }

        public string Street { get; set; }

        public string Website { get; set; }

        public int BudgetMin { get; set; }

        public int BudgetMax { get; set; }

        [Required]
        public int TotalApartment { get; set; }

        [Required]
        public int Area { get; set; }

        [Required]
        public int StartedYear { get; set; }

        [Required]
        public long CityId { get; set; }

        [Required]
        public long ProjectTypeId { get; set; }

        [Required]
        public long ProjectStatusId { get; set; }

        [Required]
        public FileEntityInfo Avatar { get; set; }

        [Required]
        public FileEntityInfo LocationImage { get; set; }

        [Required]
        public FileEntityInfo SiteMapImage { get; set; }

        public string MapLatitude { get; set; }
        public string MapLongitude { get; set; }

        public IEnumerable<ProjectBlockViewModel> ProjectBlocks { get; set; }

        public GeographicaLocationViewModel City { get; set; }
        public TaxomonyViewModel ProjectType { get; set; }

        public static ProjectViewModel FromEntity(Project entity)
        {
            var entityDetail = entity.Details.FirstOrDefault();
            var resultViewModel = AutoMapper.Mapper.Map<ProjectViewModel>(entityDetail);

            var projectType = entity.EntityTaxonomies.FirstOrDefault(o => o.Taxonomy.TaxonomyTypeId == ProjectTypeSeed.ProjectType.Id);

            resultViewModel.City = GeographicaLocationViewModel.FromEntity(entity.City);

            resultViewModel.CityId = entity.CityId;
            resultViewModel.Id = entity.Id;
            resultViewModel.Name = entity.Name;
            resultViewModel.BudgetMin = entity.BudgetMin;
            resultViewModel.BudgetMax = entity.BudgetMax;

            resultViewModel.ProjectTypeId = projectType.TaxonomyId;
            resultViewModel.ProjectType = TaxomonyViewModel.FromEntity(projectType.Taxonomy);

            var projectStatus = entity.EntityTaxonomies.FirstOrDefault(o => o.Taxonomy.TaxonomyTypeId == ProjectStatusSeed.ProjectStatus.Id);

            if (projectStatus != null)
            {
                resultViewModel.ProjectStatusId = projectStatus.TaxonomyId;
                resultViewModel.ProjectType = TaxomonyViewModel.FromEntity(projectStatus.Taxonomy);
            }

            var avatarFile = entity.EntityFiles.FirstOrDefault(o => o.UsingType == (int)FileUsingType.Avatar).FileEntity;
            resultViewModel.Avatar = FileEntityInfo.FromEntity(avatarFile);

            var locationImage = entity.EntityFiles.FirstOrDefault(o => o.UsingType == (int)FileUsingType.LocationImage)?.FileEntity;
            if (locationImage != null)
                resultViewModel.LocationImage = FileEntityInfo.FromEntity(locationImage);

            var siteMapImage = entity.EntityFiles.FirstOrDefault(o => o.UsingType == (int)FileUsingType.SiteMapImage)?.FileEntity;
            if (locationImage != null)
                resultViewModel.SiteMapImage = FileEntityInfo.FromEntity(siteMapImage);

            resultViewModel.ProjectBlocks = entity.ProjectBlocks.Select(o => ProjectBlockViewModelExtension.FromEnitity(o));

            return resultViewModel;
        }
    }

    public class ProjectViewModelExtended : ProjectViewModel
    {
        public IEnumerable<TaxomonyViewModel> AvaliableProjectTypes { get; set; }
        public IEnumerable<TaxomonyViewModel> AvaliableProjectStatus { get; set; }

        public IEnumerable<GeographicaLocationViewModel> AvaliableGeographicaLocations { get; set; }

        public static new ProjectViewModelExtended FromEntity(Project entity)
        {
            var projectViewModel = ProjectViewModel.FromEntity(entity);
            var resultViewModel = AutoMapper.Mapper.Map<ProjectViewModelExtended>(projectViewModel);

            return resultViewModel;
        }
    }
}
