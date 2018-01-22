using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Base.Collection;
using Omi.Base.ViewModel;
using Omi.Modules.Blog.Entities;
using Omi.Modules.Blog.ServiceModel;
using Omi.Modules.Blog.Services;
using Omi.Modules.Blog.ViewModels;
using System.Linq;
using System.Threading.Tasks;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/blogs")]
    public class BlogPublicController : ControllerBase
    {
        private BlogService _services;

        public BlogPublicController(BlogService services)
        {
            _services = services;
        }

        public async Task<OkObjectResult> GetBlogs(BlogGetViewModel searchParams)
        {
            var serviceModel = BlogFilterServiceModel.FromViewModel(searchParams);
            var entities = _services.GetBlogs(serviceModel);
            var pageList = await PaginatedList<BlogEntity>.CreateAsync(entities, searchParams.Page, searchParams.PageSize);
            var result = new PaginationResult<BlogEntity, BlogViewModel>(pageList, entity => BlogViewModel.FromEntity(entity));

            return Ok(result);
        }

        [Route("{name}")]
        public OkObjectResult GetBlog(string name)
        {
            var entity = _services.GetBlog(new BlogFilterServiceModel() {
                Name = name
            });

           var result = BlogViewModel.FromEntity(entity);
           return Ok(result);
        }

        [Route("prev/{id}")]
        public object GetPrevBlog(long id)
        {
            var entities = _services.GetBlogs(new BlogFilterServiceModel());
            var prev = entities.FirstOrDefault(o => o.Id < id);
            if (prev == null)
                return NoContent();

            var result = BlogViewModel.FromEntity(prev);
            return Ok(result);
        }

        [Route("next/{id}")]
        public object GetNextBlog(long id)
        {
            var entities = _services.GetBlogs(new BlogFilterServiceModel());
            var next = entities.FirstOrDefault(o => o.Id > id);
            if (next == null)
                return NoContent();

            var result = BlogViewModel.FromEntity(next);
            return Ok(result);
        }
    }
}