using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;
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
