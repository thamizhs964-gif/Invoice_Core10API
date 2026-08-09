using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;

namespace Invoice_API.Mapper;

public class CustomerProfile : Profile
{
    public CustomerProfile()
    {
        CreateMap<Customer, CustomerDto>().ReverseMap();
    }
}