namespace Invoice_API.DTO
{
    public class CategoryDto
    {
        public int Id { get; set; } 
        public string Code { get; set; }   
        public string Name { get; set; }
        public string? Description { get; set; }
        public bool? Isactive { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string? updatedBy { get; set; }
        public DateTime? updatedDate { get; set; }

}
}
