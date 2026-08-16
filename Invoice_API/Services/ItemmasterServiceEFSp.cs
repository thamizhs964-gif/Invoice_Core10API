using AutoMapper;
using Invoice_API.Contracts;
using Invoice_API.Controllers;
using Invoice_API.DTO;
using Invoice_API.Entities;

namespace Invoice_API.Services
{
    public class ItemmasterServiceEFSp : IItemmasterService
    {
        private readonly IItemmasterRepository _repository;
        private readonly IMapper _mapper;
        private readonly ILogger<ItemmasterServiceEFSp> _logger;
        public ItemmasterServiceEFSp(IItemmasterRepository repository, IMapper mapper, ILogger<ItemmasterServiceEFSp> logger)
        {
            _repository = repository;
            _mapper = mapper;
            _logger = logger;
        }
        public async Task<int> AddAsync(ItemmasterDto dto)
        {
            var entity = _mapper.Map<Itemmaster>(dto);
            return await _repository.AddAsync(entity);
        }
        public async Task<IEnumerable<ItemmasterDto>> GetAllAsync()
        {
            var items = await _repository.GetAllAsync();
            return _mapper.Map<IEnumerable<ItemmasterDto>>(items);
        }
        public async Task<ItemmasterDto?> GetByIdAsync(int id)
        {
            var item = await _repository.GetByIdAsync(id);
            return item == null ? null : _mapper.Map<ItemmasterDto>(item);
        }
        public async Task<bool> UpdateAsync(ItemmasterDto dto)
        {
            var entity = _mapper.Map<Itemmaster>(dto);
            return await _repository.UpdateAsync(entity);
        }
        public async Task<bool> DeleteAsync(int id)
        {
            return await _repository.DeleteAsync(id);
        }
        public async Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(ItemmasterFilterDto search)
        {
            _logger.LogInformation("Itemmaster Service Getallpaged Method Called");
            var result = await _repository.GetAllPagedAsync(search);

            return new PagedResultDto<ItemmasterDto>
            {
                Data = _mapper.Map<IEnumerable<ItemmasterDto>>(result.Data),
                TotalRecords = result.TotalRecords
            };
        }
    }
}
