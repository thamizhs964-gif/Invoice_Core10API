using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;


namespace Invoice.BAl.Mapper;

public class ItemmasterProfile : Profile
{
    public ItemmasterProfile()
    {
        CreateMap<ItemmasterEntity, ItemmasterDto>().ReverseMap();
    }
}
