using Invoice.DAL;
using Invoice.DAL.Contracts;

namespace Invoice.DAL.Contracts;

public class ICategoryRepository
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

    Task<Category?> GetByNameAsync(string name);
    Task<CategoryItemCountResult?> GetCategoryItemCountAsync(
    string categoryName,
    bool categoryActiveOnly,
    bool? itemActiveOnly);

}
