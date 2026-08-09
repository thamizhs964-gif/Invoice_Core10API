using Invoice_API.DTO;
using Invoice_API.Entities;

namespace Invoice_API.Contracts
{
    public interface IItemmasterRepository
    {
        Task<int> AddAsync(Itemmaster itemmaster);

        Task<IEnumerable<Itemmaster>> GetAllAsync();

        Task<Itemmaster?> GetByIdAsync(int Id);

        Task<bool> UpdateAsync(Itemmaster itemmaster);

        Task<bool> DeleteAsync(int Id);

        Task<PagedResultDto<Itemmaster>> GetAllPagedAsync(
           string? itemCode,
           string? itemname,
           string? uom,
           int pageNumber,
           int pageSize);
    }
}
