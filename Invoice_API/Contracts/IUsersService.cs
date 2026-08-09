using Invoice_API.DTO;
using static System.Runtime.InteropServices.JavaScript.JSType;
namespace Invoice_API.Contracts;

public interface IUsersService
{
    Task<int> AddAsync(UsersDto dto);

    Task<IEnumerable<UsersDto>> GetAllAsync();

    Task<UsersDto?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(UsersDto dto);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<UsersDto>> GetAllPagedAsync(
    string? UserName,
    string? DisplayName,
    DateTime? DateOfBirth,
    string? City,
    int pageNumber,
    int pageSize);

}