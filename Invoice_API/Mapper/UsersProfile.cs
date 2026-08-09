using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Invoice_API.Mapper

{

    public class UsersProfile : Profile

    {

        public UsersProfile()

        {

            CreateMap<Users, UsersDto>().ReverseMap();

        }

    }

}

