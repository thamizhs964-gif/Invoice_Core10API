using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Invoice_API.Contracts;
using Invoice_API.DTO;
using Invoice_API.Models;
using Microsoft.AspNetCore.Authorization;

namespace Invoice_API.Controllers
{
    [Route("api/[controller]")]

    [ApiController]

    [Authorize]

    public class VendorController : ControllerBase

    {
        private readonly IVendorService _Service;

        public VendorController(IVendorService service)
        {
            _Service = service;
        }

        [HttpGet("GetAll")]

        public async Task<IActionResult> GetAll()
        {
            try
            {
                var data = await _Service.GetAllAsync();

                return Ok(new ApiResponse<IEnumerable<VendorDto>>
                {
                    Success = true,

                    Message = "Vendors retrieved successfully",

                    Data = data

                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,

                    Message = "Error retrieving vendors",

                    Error = new ApiError
                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });

            } 
            
        }

        [HttpGet("GetById/{id}")]

        public async Task<IActionResult> GetById(int id)
        {
            try
            {
                var vendor = await _Service.GetByIdAsync(id);
                if (vendor == null)
                {
                    return NotFound(new ApiResponse<string>
                    {

                    }
                        )
                }
            }
        } 
    }
}