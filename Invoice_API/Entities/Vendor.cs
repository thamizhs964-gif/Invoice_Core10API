using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Invoice_API.Entities;

[Table("Vendor")]

public class Vendor
{
    [Key]
    public int Id { get; set; }

    [Required]
    public string VendorCode { get; set; }

    [Required]
    public string VendorName { get; set; }

    public string? ContactPerson { get; set; }

    public string? MobileNo { get; set; }

    public string? Email { get; set; }

    public string? Address1 { get; set; }

    public string? Address2 { get; set; }

    public string? City { get; set; }

    public string? State { get; set; }

    public string? Country { get; set; }

    public string? ZipCode { get; set; }

    public string? GstNo { get; set; }

    [Required]
    public bool IsActive { get; set; }

    [Required]
    public bool IsDeleted { get; set; }

    public string? CreatedBy { get; set; }

    [Required]
    public DateTime CreatedDate { get; set; }

    public string? UpDatedBy { get; set; }

    public DateTime? UpdatedDate { get; set; }

}
