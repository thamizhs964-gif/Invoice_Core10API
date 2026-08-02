using Invoice_API.DTO;

namespace Invoice_API.Contracts
{
    public interface IItemmasterService
    {
        Task<int> AddAsync(ItemmasterDto itemmaster);

        Task<IEnumerable<ItemmasterDto>> GetAllAsync();

        Task<ItemmasterDto> GetByIdAsync(int Id);

        Task<bool> UpdateAsync(ItemmasterDto itemmaster);

        Task<bool> DeleteAsync(int Id);

        Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(
           string? itemCode,
           string? itemname,
           string? uom,
           int pageNumber,
           int pageSize);
        Task GetAllAsync(string? itemCode, string? itemName, string? uom, int pageNumber, int pageSize);
    }
}
