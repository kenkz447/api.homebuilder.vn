using Omi.Base;
using Omi.Modules.Blog.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace Omi.Modules.Blog.ServiceModel
{
    public class BlogFilterServiceModel : BaseFilterServiceModel<long>
    {
        public string Name { get; set; }
        public string Title { get; set; }

        public static BlogFilterServiceModel FromViewModel(BlogGetViewModel viewModel)
        {
            return new BlogFilterServiceModel
            {
                Name = viewModel.Name,
                Title = viewModel.Title
            };
        }
    }
}
