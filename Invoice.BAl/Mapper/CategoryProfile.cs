using Invoice.Data.Entities;
using Invoice.DTOs;
using AutoMapper;

namespace Invoice.BAl.Mapper;

public class CategoryProfile : Profile
{
    public CategoryProfile()

    {

        CreateMap<CategoryEntity, CategoryDto>().ReverseMap();

    }
}
