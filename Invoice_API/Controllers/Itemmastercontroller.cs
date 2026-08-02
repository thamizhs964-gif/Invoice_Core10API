using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Invoice_API.Contracts;
using Invoice_API.DTO;
using Invoice_API.Models;
using Microsoft.AspNetCore.Authorization;

namespace Invoice_API.Controllers
{
    [Microsoft.AspNetCore.Mvc.Route("api/[Controller]")]
    [ApiController]
    [Authorize]

    public class Itemmastercontroller : ControllerBase
    {
        private readonly IItemmasterService _service;

        public Itemmastercontroller(IItemmasterService service)
        {
            _service = service;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            try

            {
                var data = await _service.GetAllAsync();

                return Ok(new ApiResponse<IEnumerable<ItemmasterDto>>
                {
                    Success = true,
                    Message = "Itemmaster retrieved successfully",
                    Data = data,
                    TotalRecords = data.Count()

                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error retrieving Itemmaster",
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
                var item = await _service.GetByIdAsync(id);
                if (item == null)
                {
                    return NotFound(new ApiResponse<string>
                    {
                        Success = false,
                        Message = "Item not found"
                    });
                }

                return Ok(new ApiResponse<ItemmasterDto>
                {
                    Success = true,
                    Message = "Item retrieved successfully",
                    Data = item
                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error retrieving item",
                    Error = new ApiError
                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });
            }
        }

        [HttpPost("Create")]
        public async Task<IActionResult> Create(ItemmasterDto dto)
        {
            try
            {
                var id = await _service.AddAsync(dto);
                return Ok(new ApiResponse<int>
                {
                    Success = true,
                    Message = "Item created successfully",
                    Data = id
                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error creating item",
                    Error = new ApiError
                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });
            }
        }

        [HttpPut("Update/{id}")]
        public async Task<IActionResult> update(ItemmasterDto dto,int id)
        {
            try
            {
                dto.Id = id;
                var update = await _service.UpdateAsync(dto);

                if (!update)

                {
                    return NotFound(new ApiResponse<string>
                    {
                        Success = false,
                        Message = "item not found"
                    });
                }

                return Ok(new ApiResponse<string>
                {
                    Success = true,
                    Message = "Item Updated successfully"
                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error updateing item",
                    Error = new ApiError
                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });
            }
        }

        [HttpDelete("Delete/{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            try
            {
                var deleted = await _service.DeleteAsync(id);
                if (!deleted)
                {
                    return NotFound(new ApiResponse<string>
                    {
                        Success = false,
                        Message = "Item Not Found"
                    });
                }

                return Ok(new ApiResponse<string>
                {
                    Success = true,
                    Message = "Item deleted successfully"
                });
            }

            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error deleting item",
                    Error = new ApiError
                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });
            }
        }

        [HttpGet("GetAllPaged")]
        public async Task<IActionResult> GetAllPaged(

            string? itemCode,

            string? itemName,

            string? uom,

            int pageNumber = 1,

            int pageSize = 10)
        {
            try
            {
                var result = await _service.GetAllPagedAsync( itemCode, itemName, uom, pageNumber, pageSize);
                return Ok(new ApiResponse<IEnumerable<ItemmasterDto>>
                {
                    Success = true,
                    Message = "Item retrived successfully",
                    Data = result.Data,
                    TotalRecords = result.TotalRecords
                });
            }

            catch (Exception ex)

            {
                return StatusCode(500, new ApiResponse<string>
                {
                    Success = false,
                    Message = "Error retrieving items",
                    Error = new ApiError

                    {
                        Code = "500",
                        Details = ex.Message
                    }
                });
            }
        }
    }
}




