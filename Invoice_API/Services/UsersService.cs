using AutoMapper;
using Invoice_API.Contracts;
using Invoice_API.DTO;
using Invoice_API.Entities;
using Invoice_API.Repositories;

namespace Invoice_API.Services

{

    public class UsersService : IUsersService

    {

        private readonly IUsersRepository _repository;

        private readonly IMapper _mapper;

        public UsersService(IUsersRepository repository, IMapper mapper)

        {

            _repository = repository;

            _mapper = mapper;

        }

        public async Task<int> AddAsync(UsersDto dto)

        {

            var entity = _mapper.Map<Users>(dto);

            return await _repository.AddAsync(entity);

        }

        public async Task<IEnumerable<UsersDto>> GetAllAsync()

        {

            var user = await _repository.GetAllAsync();

            return _mapper.Map<IEnumerable<UsersDto>>(user);

        }

        public async Task<UsersDto?> GetByIdAsync(int id)

        {

            var user = await _repository.GetByIdAsync(id);

            return user == null ? null : _mapper.Map<UsersDto?>(user);

        }

        public async Task<bool> UpdateAsync(UsersDto dto)

        {

            var entity = _mapper.Map<Users>(dto);

            return await _repository.UpdateAsync(entity);

        }

        public async Task<bool> DeleteAsync(int id)

        {

            return await _repository.DeleteAsync(id);

        }

        public async Task<PagedResultDto<UsersDto>> GetAllPagedAsync(

            string? UserName,

            string? DisplayName,

            DateTime? DateOfBirth,

            string? City,

            int PageNumber,

            int Pagesize

            )

        {

            var result = await _repository.GetAllPagedAsync(

                UserName, DisplayName, DateOfBirth, City, PageNumber, Pagesize);

            return new PagedResultDto<UsersDto>

            {

                Data = _mapper.Map<IEnumerable<UsersDto>>(result.Data),

                TotalRecords = result.TotalRecords

            };

        }

    }

}