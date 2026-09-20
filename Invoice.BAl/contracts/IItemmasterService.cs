using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAl.contracts;

public interface IItemmasterService
{
    Task<int> AddAsync(ItemmasterDto entity);
    Task<IEnumerable<ItemmasterDto>> GetAllAsync();
    Task<ItemmasterDto?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(ItemmasterDto entity);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(ItemmasterFilterDto search);
    Task<int> GetActiveItemCountByCategoryAsync(int categoryId);
}
