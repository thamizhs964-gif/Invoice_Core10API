using AutoMapper;
using Invoice_API.DTO;
using Invoice_API.Entities;

public class VendorProfile : Profile
{
    public VendorProfile()
    {
        CreateMap<Vendor, VendorDto>().ReverseMap();
    }

}