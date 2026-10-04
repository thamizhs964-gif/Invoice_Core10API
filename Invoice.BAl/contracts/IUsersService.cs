using Invoice.DTOs;
using Invoice.Model;

namespace Invoice.BAl.contracts;

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
