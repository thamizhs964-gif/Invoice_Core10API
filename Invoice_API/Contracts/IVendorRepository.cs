using Invoice_API.DTO;
using Invoice_API.Entities;

namespace Invoice_API.Contracts;

public interface IVendorRepository
{
    Task<int> AddAsync(Vendor vendor);
    Task<IEnumerable<Vendor>> GetAllAsync();
    Task<Vendor?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(Vendor vendor);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<Vendor>> GetAllPagedAsync(
        string? VendorCode,
        string? VendorName,
        string? City,
        int pageNumber,
        int pageSize);
}