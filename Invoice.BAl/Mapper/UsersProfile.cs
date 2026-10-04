using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAl.Mapper;

public class UsersProfile : Profile
{

    public UsersProfile()

    {

        CreateMap<UsersEntity, UsersDto>().ReverseMap();

    }
}
