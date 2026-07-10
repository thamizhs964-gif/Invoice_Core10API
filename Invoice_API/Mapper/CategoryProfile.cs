using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace InvoiceCoreAPI.Mapper

{

    public class CategoryProfile : Profile

    {

        public CategoryProfile()

        {

            CreateMap<Category, CategoryDto>().ReverseMap();

        }

    }

}

