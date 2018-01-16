using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Omi.Base;
using Omi.Data;
using Omi.Modules.HomeBuilder.Settings.WebsiteSetting.ServiceModels;
using Omi.Modules.HomeBuilder.Settings.WebsiteSetting.Services;
using Omi.Modules.HomeBuilder.Settings.WebsiteSetting.ViewModels;
using Omi.Modules.ModuleBase;
using System.Threading.Tasks;

namespace Omi.Modules.HomeBuilder.Settings.WebsiteSetting.Controllers
{
    [Route("/api/website-settings")]
    public class WebsiteSettingController : BaseController
    {
        public readonly WebsiteSettingService _websiteSettingService;
        public WebsiteSettingController(
            WebsiteSettingService websiteSettingService,
            ILogger<WebsiteSettingController> logger, 
            UserManager<ApplicationUser> userManager) : base(logger, userManager)
        {
            _websiteSettingService = websiteSettingService;
        }

        [HttpPut]
        public async Task<NoContentResult> UpdateSetting([FromBody]WebsiteSettingViewModel viewModel)
        {
            var updateWebsiteSettingServiceModel = UpdateWebsiteSettingServiceModel.FromViewModel(viewModel);
            updateWebsiteSettingServiceModel.UpdateBy = CurrentUser;

            await _websiteSettingService.UpdateSetting(updateWebsiteSettingServiceModel);

            return NoContent();
        }

        [AllowAnonymous]
        public async Task<OkObjectResult> GetSetting()
        {
            var websiteSettingEntity = await _websiteSettingService.GetSetting();
            var viewModel = WebsiteSettingViewModel.FromEntity(websiteSettingEntity);

            return Ok(viewModel);
        }
    }
}