using Invoice_API.DTO;

namespace Invoice_API.DTO;

public class LoginResponseDto

{

    public string Token { get; set; } = string.Empty;

    public DateTime Expiration { get; set; }

    public UsersDto Users { get; set; } = new();

}

