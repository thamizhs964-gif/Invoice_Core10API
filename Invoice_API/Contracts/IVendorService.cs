using Invoice_API.DTO;

namespace Invoice_API.Contracts

{

    public interface IVendorService

    {

        Task<int> AddAsync(VendorDto vendor);

        Task<IEnumerable<VendorDto>> GetAllAsync();

        Task<VendorDto?> GetByIdAsync(int id);

        Task<bool> UpdateAsync(VendorDto vendor);

        Task<bool> DeleteAsync(int id);

        Task<PagedResultDto<VendorDto>> GetAllPagedAsync(

            string? VendorCode,

            string? VendorName,

            string? City,

            int pageNumber,

            int pageSize);

    }

}