using Invoice.Data.Entities;
using Invoice.DTOs;

namespace Invoice.DAL.Contracts;

public interface IUsersRepository
{
    Task<IEnumerable<UsersEntity>> GetAllAsync();

    Task<UsersEntity?> GetByIdAsync(int id);

    Task<UsersEntity?> GetByUserNameAsync(string userName);

    Task<UsersEntity?> GetByEmailAsync(string email);

    Task<int> AddAsync(UsersEntity entity);

    Task<bool> UpdateAsync(int id, UsersEntity entity);

    Task<bool> DeleteAsync(int id, string updatedBy);

    Task<PagedResultDto<UsersEntity>> GetAllPagedAsync

        (UsersFilterDto filter);

    Task<bool> UpdateLastLoginAsync(int id);

}
