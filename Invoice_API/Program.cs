using Invoice_API.Contracts;
using Invoice_API.Data;
using Invoice_API.Repositories;
using Invoice_API.Services;
using Invoice_API.Mapper;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi;
using System.Text;
//using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.Annotations;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
builder.Services.AddScoped<ICategoryRepository, CategoryRepositories>();
builder.Services.AddScoped<IUsersRepository, UsersRepositories>();
builder.Services.AddScoped<ICustomerRepository, CustomerRepositories>();
builder.Services.AddScoped<ICategoryService, CategoryService>();
builder.Services.AddScoped<IUsersService,UsersService>();
builder.Services.AddScoped<ICustomerService, CustomerService>();
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(CategoryProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(UsersProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(CustomerProfile).Assembly));

var AllowAngular = "_allowAngular"; builder.Services.AddCors(options =>
{
    options.AddPolicy(name: AllowAngular,
        policy =>
        {
            policy.WithOrigins("http://localhost:4200")
                  .AllowAnyHeader()
                  .AllowAnyMethod();
        });
});
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
// builder.Services.AddOpenApi();
builder.Services.AddEndpointsApiExplorer();
//builder.Services.AddSwaggerGen();

var jwtKey = builder.Configuration["Jwt:Key"] ?? "v2UJQxTrwUCqqJkehkxvSUZKQCX6gNmRWq7q1bWa3Jw=";

var jwtIssuer = builder.Configuration["Jwt:Issuer"] ?? "yourapiissuer";

builder.Services.AddAuthentication(options =>

{

    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme; ;

    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;

}).AddJwtBearer(options =>

{

    options.TokenValidationParameters = new TokenValidationParameters

    {

        ValidateIssuer = true,

        ValidateAudience = false,

        ValidateLifetime = true,

        ValidateIssuerSigningKey = true,

        ValidIssuer = jwtIssuer,

        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey))

    };

});

builder.Services.AddSwaggerGen(c => {
    c.EnableAnnotations();
    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        In = ParameterLocation.Header,
        Description = "Insert JWT like: Bearer {your token}",
        Name = "Authorization",
        Type = SecuritySchemeType.ApiKey,
        Scheme = "Bearer"
    });
    c.AddSecurityRequirement(document => new OpenApiSecurityRequirement
    {
        [new OpenApiSecuritySchemeReference("Bearer", document)] = new List<string>()
    });
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}


// Configure the HTTP request pipeline.
// if (app.Environment.IsDevelopment())
//{
//  app.MapOpenApi();
//}
app.UseCors(AllowAngular);
app.UseAuthorization();

app.MapControllers();

app.Run();
