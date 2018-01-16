using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Omi.Modules.HomeBuilder.Services;
using Omi.Modules.HomeBuilder.ViewModels;

namespace Omi.Mudules.HomeBuilder.Public.Controllers
{
    [AllowAnonymous]
    [Route("api/public/room-layouts")]
    public class RoomPublicController : ControllerBase
    {
        public ProjectService _projects;

        public RoomPublicController(ProjectService project)
        {
            _projects = project;
        }

        [Route("{id}")]
        public OkObjectResult getRoom(long id)
        {
            var roomLayout = _projects.GetProjectBlock(id);
            var result = ProjectBlockViewModelExtension.FromEnitity(roomLayout);

            return Ok(result);
        }
    }
}
