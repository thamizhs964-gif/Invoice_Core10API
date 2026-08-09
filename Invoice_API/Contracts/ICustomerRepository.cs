using Invoice_API.DTO;
using Invoice_API.Entities;

namespace Invoice_API.Contracts;

public interface ICustomerRepository
{
    Task<int> AddAsync(Customer customer);
    Task<IEnumerable<Customer>> GetAllAsync();
    Task<Customer?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(Customer customer);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<Customer>> GetAllPagedAsync(
    string? CustomerCode,
    string? CustomerName,
    string? City,
    int PageNumber,
    int PageSize
    );

}