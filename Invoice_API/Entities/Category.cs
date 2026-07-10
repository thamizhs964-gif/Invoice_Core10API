using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Invoice_API.Entities;

[Table("Category")]
public class Category
{
    [Key]
    public int Id { get; set; }
    [Required]
    [StringLength (5)]
    public string Code { get; set; }
    [Required]
    [StringLength(25)]
    public string Name { get; set; }
    [StringLength(100)]
    public string? Description { get; set; }
    public bool IsActive { get; set; }
    [StringLength(100)]
    public string? CreatedBy { get; set; }
    public DateTime? CreatedDate { get; set; }
    [StringLength (100)]
    public string? UpdatedBy { get; set; }
    public DateTime? UpdatedDate { get; set; }




}
