using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;

public class CustomerProfile : Profile
{
    public CustomerProfile()
    {
        CreateMap<Customer, CustomerDto>().ReverseMap();
    }
}