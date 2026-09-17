using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAl.contracts;

public interface ICategoryService
{
    Task<int> AddAsync(CategoryDto entity);

    Task<IEnumerable<CategoryDto>> GetAllAsync();

    Task<CategoryDto?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(CategoryDto category);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<CategoryDto>> GetAllPagedAsync(

string? Code,

string? Name,

int pageNumber,

int pageSize);


}
