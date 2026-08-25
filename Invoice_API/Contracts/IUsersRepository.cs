using Invoice_API.DTO;
using Invoice_API.Entities;
using Invoice_API.Repositories;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
namespace Invoice_API.Contracts;

public interface IUsersRepository
{
    Task<IEnumerable<Users>> GetAllAsync();

    Task<Users?> GetByIdAsync(int id);

    Task<Users?> GetByUserNameAsync(string userName);

    Task<Users?> GetByEmailAsync(string email);

    Task<int> AddAsync(Users user);

    Task<bool> UpdateAsync(int id, Users user);

    Task<bool> DeleteAsync(int id, string updatedBy);

    Task<PagedResultDto<Users>> GetAllPagedAsync

        (UsersFilterDto filter);

    Task<bool> UpdateLastLoginAsync(int id);

}
 
 
 
