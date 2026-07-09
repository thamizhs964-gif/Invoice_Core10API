using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Invoice_API.DTO;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.AspNetCore.Http.Connections;

namespace Invoice_API.Controllers;

[Route("api/[controller]")]
[ApiController]
public class LoginController : ControllerBase
{
    private readonly ILogger<LoginController> _logger;
    private readonly IConfiguration _configuration; 

    public LoginController (ILogger<LoginController>logger, IConfiguration configuration)

    {  _logger = logger; 
       _configuration = configuration;
    }

    [AllowAnonymous]
    [HttpPost("Login")]
    public async Task<IActionResult> Login([FromBody] LoginDto dto)
    {
        
        if (!ModelState.IsValid) 
            return BadRequest();


        var configUsername = _configuration["UserCredentials:Username"];
        var configPassword = _configuration["UserCredentials:Password"];

        if (dto.UserName != configUsername || dto.Password != configPassword)
            return Unauthorized();
        var jwtKey = _configuration["Jwt:Key"];
        var jwtIssuer = _configuration["Jwt:Issuer"];
        var expriyMinutes = Convert.ToInt32(_configuration["jwt:ExpiryMinutes"]);

        var claims = new[]
        {
            new Claim(ClaimTypes.Name , dto.UserName),
            new Claim(ClaimTypes.Role,"Admin"),
            new Claim(JwtRegisteredClaimNames.Jti,Guid.NewGuid().ToString())
        };
        if (String.IsNullOrEmpty(jwtKey)) throw new Exception("JWT Key is missing in the configuration");

        var Key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey));
        var cre = new SigningCredentials(Key, SecurityAlgorithms.HmacSha256);
        var expiry = DateTime.UtcNow.AddMinutes(expriyMinutes);

        var token = new JwtSecurityToken(
            issuer: jwtIssuer,
            audience: null,
            claims: claims,
            expires: expiry,
            signingCredentials: cre
            );
        return Ok(new
        {
            token = new JwtSecurityTokenHandler().WriteToken(token),
            expiration = expiry
        });


    }


}
