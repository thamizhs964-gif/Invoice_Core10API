using Invoice.DTOs;

namespace Invoice.DTOs;

public class LoginResponseDto
{
    public string Token { get; set; } = string.Empty;

    public DateTime Expiration { get; set; }

    public UsersDto Users { get; set; } = new();
}
