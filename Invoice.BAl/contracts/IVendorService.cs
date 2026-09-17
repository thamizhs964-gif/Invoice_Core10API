using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAl.contracts;

public interface IVendorService
{
    Task<int> AddAsync(VendorDto entity);

    Task<IEnumerable<VendorDto>> GetAllAsync();

    Task<VendorDto?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(VendorDto entity);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<VendorDto>> GetAllPagedAsync(

        string? VendorCode,

        string? VendorName,

        string? City,

        int pageNumber,

        int pageSize);

}
