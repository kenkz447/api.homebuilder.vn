using Omi.Base;
using Omi.Modules.HomeBuilder.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace Omi.Modules.HomeBuilder.ServiceModel
{
    public class PackageFilterServiceModel : BaseFilterServiceModel<long>
    {
        public string Title { get; set; }

        public string SortBy { get; set; }
        public int Page { get; set; }
        public int PageSize { get; set; }

        public int BudgetMin { get; set; }
        public int BudgetMax { get; set; }
        public List<long> TaxonomyIds { get; set; }

        public string[] GetTypes { get; set; }

        public static PackageFilterServiceModel FromViewModel(PackageFilterViewModel viewModel)
            => new PackageFilterServiceModel
            {
                SortBy = viewModel.SortBy,
                BudgetMax = viewModel.BudgetMax,
                BudgetMin = viewModel.BudgetMin,
                TaxonomyIds = new List<long>() {
                    viewModel.DesignTheme,
                    viewModel.HouseType
                },
                Page = viewModel.Page,
                PageSize = viewModel.PageSize,
                GetTypes = viewModel.GetTypes,
                Title = viewModel.Title
            };
    }
}
