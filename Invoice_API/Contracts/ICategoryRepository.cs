using Invoice_API.Entities;
using Invoice_API.DTO;


namespace Invoice_API.Contracts;

public interface ICategoryRepository

{

    Task<int> AddAsync(Category category);

    Task<IEnumerable<Category>> GetAllAsync();

    Task<Category?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(Category category);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<Category>> GetAllPagedAsync(

    string? Code,

    string? Name,

    int pageNumber,

    int pageSize);

}

