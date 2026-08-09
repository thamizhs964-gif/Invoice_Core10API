using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Invoice_API.Entities;

[Table("Itemmaster")]
public class Itemmaster
{
    [Key]
    public int Id { get; set; }

    [Required]
    [StringLength(5)]
    public string CatCode { get; set; }

    [Required]
    [StringLength(25)]
    public string ItemBarCode { get; set; }

    [Required]
    [StringLength(10)]
    public string Itemcode { get; set; }

    [Required]
    [StringLength(100)]
    public string Itemname { get; set; }

    [Required]
    [StringLength(250)]
    public string? Description { get; set; }

    [Required]
    [StringLength(3)]
    public string Uom { get; set; }

    [Column(TypeName = "decimal(18,2)")]
    public decimal? Rate { get; set; }

    [Column(TypeName = "decimal(18,2)")]
    public decimal? Minimumstock { get; set; }

    [Column(TypeName = "decimal(18,2)")]
    public decimal? Maximumstock { get; set; }

    public bool? IsActive { get; set; }

    [StringLength(100)]
    public string? Createdby { get; set; }

    public DateTime? Createddate { get; set; }

    [StringLength(100)]
    public string? Updatedby { get; set; }

    public DateTime? Updateddate { get; set; }

}
