namespace Invoice_API.DTO
{
    public class ItemmasterDto
    {
        public int Id { get; set; }
        public string CatCode { get; set; }
        public string ItemBarCode { get; set; }
        public string Itemcode { get; set; }
        public string Itemname { get; set; }
        public string? Description { get; set; }
        public string Uom { get; set; }
        public decimal? Rate { get; set; }
        public decimal? Minimumstock { get; set; }
        public decimal? Maximumstock { get; set; }
        public bool? IsActive { get; set; }
        public string? Createdby { get; set; }
        public DateTime? Updateddate { get; set; }
    }
}
