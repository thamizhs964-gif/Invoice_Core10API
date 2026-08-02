using Invoice_API.Contracts;
using Invoice_API.Data;
using Invoice_API.DTO;
using Invoice_API.Entities;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;

namespace Invoice_API.Repositories
{
    public class ItemmasterRepository : IItemmasterRepository
    {
        private readonly AppDbContext _dbContext;

        public ItemmasterRepository(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> AddAsync(Itemmaster itemmaster)
        {
            var result = await _dbContext.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Itemmaster_Insert
                @CatCode,
                @ItemBarCode,
                @ItemCode,
                @ItemName,
                @Description, 
                @Uom,
                @Rate,
                @Minimumstock,
                @Maximumstock,
                @IsActive",
                
                new SqlParameter("@CatCode", itemmaster.CatCode),
                new SqlParameter("@ItemBarCode", itemmaster.ItemBarCode),
                new SqlParameter("@ItemCode", itemmaster.Itemcode),
                new SqlParameter("@Itemname", itemmaster.Itemname),
                new SqlParameter("@Description", (object?)itemmaster.Description ?? DBNull.Value),
                new SqlParameter("@Uom", itemmaster.Uom),
                new SqlParameter("@Rate", (object?)itemmaster.Rate ?? DBNull.Value),
                new SqlParameter("@Minimumstock", (object?)itemmaster.Minimumstock ?? DBNull.Value),
                new SqlParameter("@Maximumstock", (object?)itemmaster.Maximumstock ?? DBNull.Value),
                new SqlParameter("@IsActive", itemmaster.IsActive)
                );
            return result;
        }

        public async Task<bool> UpdateAsync(Itemmaster itemmaster)
        {
            var affectedRows = await _dbContext.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Itemmaster_Update
                @Id,
                @CatCode,
                @ItemBarCode,
                @ItemCode,
                @ItemName,
                @Description,
                @Uom,
                @Rate,
                @Minimumstock,
                @Maximumstock,
                @IsActive",
                new SqlParameter("@Id", itemmaster.Id),
                new SqlParameter("@CatCode", itemmaster.CatCode),
                new SqlParameter("@ItemBarCode", itemmaster.ItemBarCode),
                new SqlParameter("@ItemCode", itemmaster.Itemcode),
                new SqlParameter("@ItemName", itemmaster.Itemname),
                new SqlParameter("@Description", (object?)itemmaster.Description ?? DBNull.Value),
                new SqlParameter("@Uom", itemmaster.Uom),
                new SqlParameter("@Rate", (object?)itemmaster.Rate ?? DBNull.Value),
                new SqlParameter("@Minimumstock", (object?)itemmaster.Minimumstock ?? DBNull.Value),
                new SqlParameter("@Maximumstock", (object?)itemmaster.Maximumstock ?? DBNull.Value),
                new SqlParameter("@IsActive", (object?)itemmaster.IsActive ?? DBNull.Value)
                );
            return affectedRows > 0;
        }

        public async Task<Itemmaster?> GetByIdAsync(int id)
        {
            var items = await _dbContext.Itemmaster.FromSqlRaw("EXEC sp_Itemmaster_GetById @Id", new SqlParameter("@Id", id))
                .AsNoTracking()
                .ToListAsync();
            return items.FirstOrDefault();
        }

        public async Task<IEnumerable<Itemmaster>> GetAllAsync()
        {
            return await _dbContext.Itemmaster
                .FromSqlRaw("EXEC sp_Itemmaster_GetAll")
                .ToListAsync();
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var affectedRows = await _dbContext.Database.ExecuteSqlRawAsync(
                "EXEC sp_Itemmaster_Delete @Id",
                new SqlParameter("@Id", id));

            return affectedRows > 0;
        }

        public async Task<PagedResultDto<Itemmaster>> GetAllPagedAsync(
            string? itemCode,
            string? itemname,
            string? uom,
            int pageNumber,
            int pageSize)
        {
            using var connection = _dbContext.Database.GetDbConnection();
            
                await connection.OpenAsync();
                using var command = connection.CreateCommand();
                command.CommandText = "sp_Itemmaster_GetPaged";
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@ItemCode", (object?)itemCode ?? DBNull.Value));
                command.Parameters.Add(new SqlParameter("@ItemName", (object?)itemname ?? DBNull.Value));
                command.Parameters.Add(new SqlParameter("@Uom", (object?)uom ?? DBNull.Value));
                command.Parameters.Add(new SqlParameter("@pageNumber", pageNumber));
                command.Parameters.Add(new SqlParameter("@pageSize", pageSize));

                using var reader = await command.ExecuteReaderAsync();

                var item = new List<Itemmaster>();

                while (await reader.ReadAsync())
                {
                    item.Add(new Itemmaster()
                    {
                        Id = reader.GetInt32(0),
                        CatCode = reader.GetString(1),
                        ItemBarCode = reader.GetString(2),
                        Itemcode = reader.GetString(3),
                        Itemname = reader.GetString(4),
                        Description = reader.GetString(5),
                        Uom = reader.GetString(6),
                        Rate = reader.IsDBNull(7) ? null : reader.GetDecimal(7),
                        Minimumstock = reader.IsDBNull(8) ? null : reader.GetDecimal(8),
                        Maximumstock = reader.IsDBNull(9) ? null : reader.GetDecimal(9),
                        IsActive = reader.GetBoolean(10),
                    });
                }

                await reader.NextResultAsync();

                int totalRecords = 0;
                if (await reader.ReadAsync())
                {
                    totalRecords = reader.GetInt32(0);
                }

                return new PagedResultDto<Itemmaster>
                {
                    Data = item,
                    TotalRecords = totalRecords
                };
            
        }
    }
}
