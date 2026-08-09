using Invoice_API.DTO;
using Invoice_API.Entities;
using Invoice_API.Repositories;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
namespace Invoice_API.Contracts;

public interface IUsersRepository
{
    Task<int> AddAsync(Users user);

    Task<IEnumerable<Users>> GetAllAsync();

    Task<Users?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(Users users);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<Users>> GetAllPagedAsync(
        string? UserName,
        string? DisplayName,
        DateTime? DateOfBirth,
        string? City,
        int pageNumber,
        int pageSize);

}