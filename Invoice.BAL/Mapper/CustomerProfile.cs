using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Invoice.BAL.Mapper;

public class CustomerProfile : Profile
{
    public CustomerProfile()
    {
        CreateMap<CustomerEntity, CustomerDto>().ReverseMap();
    }
}
