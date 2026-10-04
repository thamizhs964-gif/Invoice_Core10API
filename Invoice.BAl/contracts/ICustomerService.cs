using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAl.contracts;

public interface ICustomerService
{
    Task<int> AddAsync(CustomerDto entity);
    Task<IEnumerable<CustomerDto>> GetAllAsync();
    Task<CustomerDto?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(CustomerDto entity);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<CustomerDto>> GetAllPagedAsync(
        string? CustomerCode,
        string? CustomerName,
        string? MobileNo,
        string? City,
        int PageNumber,
        int PageSize
        );
}
