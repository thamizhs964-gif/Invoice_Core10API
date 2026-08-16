using Invoice_API.DTO;
namespace Invoice_API.Contracts
{
    public interface IItemmasterService
    {
        Task<int> AddAsync(ItemmasterDto itemmaster);
        Task<IEnumerable<ItemmasterDto>> GetAllAsync();
        Task<ItemmasterDto?> GetByIdAsync(int id);
        Task<bool> UpdateAsync(ItemmasterDto itemmaster);
        Task<bool> DeleteAsync(int id);

        Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(ItemmasterFilterDto search);
    }
}
