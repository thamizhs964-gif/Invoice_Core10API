using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;

namespace Invoice.BAl.Mapper;

public class VendorProfile : Profile
{
    public VendorProfile()
    {
        CreateMap<VendorEntity, VendorDto>().ReverseMap();
    }
}
