using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;
using System.Runtime.InteropServices;
using static System.Runtime.InteropServices.JavaScript.JSType;


namespace Invoice_API.Mapper
{
    public class ItemmasterProfile : Profile
    {

        public ItemmasterProfile()
        {
            CreateMap<Itemmaster, ItemmasterDto>().ReverseMap();
        }


    }
}

