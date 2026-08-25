using Invoice_API.DTO;
using Invoice_API.Models;
using static System.Runtime.InteropServices.JavaScript.JSType;
namespace Invoice_API.Contracts;

public interface IUsersService
{
    Task<ApiResponse<IEnumerable<UsersDto>>> GetAllAsync();

    Task<ApiResponse<UsersDto?>> GetByIdAsync(int id);

    Task<ApiResponse<UsersDto>> AddAsync(UsersCreateDto dto);

    Task<ApiResponse<UsersDto>> UpdateAsync(

        int id,

        UsersUpdateDto dto);

    Task<ApiResponse<bool>> DeleteAsync(int id, string updatedBy);

    Task<ApiResponse<PagedResultDto<UsersDto>>> GetAllPagedAsync(

        UsersFilterDto filter);

    Task<UsersDto?> ValidateUserAsync(

        string userName,

        string password);


}
 

