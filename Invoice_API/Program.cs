using Invoice_API.Contracts;
using Invoice_API.Data;
using Invoice_API.Mapper;
using Invoice_API.Middleware;
using Invoice_API.Repositories;
using Invoice_API.Services;
using InvoiceCoreAPI.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi;
using Serilog;
using Swashbuckle.AspNetCore.Annotations;
using System.Data;
using System.Text;

Log.Logger = new LoggerConfiguration()
    .WriteTo.Console()
    .WriteTo.File(
        "logs/log.txt",
        rollingInterval: RollingInterval.Day)
    .CreateLogger();

var builder = WebApplication.CreateBuilder(args);
builder.Host.UseSerilog(); 

builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
builder.Services.AddScoped<IDbConnection>(sp =>

{

    var configuration = sp.GetRequiredService<IConfiguration>();

    var connectionString =

        configuration.GetConnectionString("DefaultConnection");

    return new SqlConnection(connectionString);

});

builder.Services.AddScoped<ICategoryRepository, CategoryRepositories>();
builder.Services.AddScoped<IUsersRepository, UsersRepositoriesSpDap>();
builder.Services.AddScoped<ICustomerRepository, CustomerRepositories>();
builder.Services.AddScoped<IVendorRepository, VendorRepositories>();
builder.Services.AddScoped<IItemmasterRepository, ItemmasterRepositoriesEFSp>();
builder.Services.AddScoped<ICategoryService, CategoryService>();
builder.Services.AddScoped<IUsersService,UsersServiceSpDap>();
builder.Services.AddScoped<ICustomerService, CustomerService>();
builder.Services.AddScoped<IVendorService, VendorService>();
builder.Services.AddScoped<IItemmasterService, ItemmasterServiceEFSp>();
builder.Services.AddScoped<IMockAIProvider, MockAIProvider>();
builder.Services.AddScoped<IAIService, AIService>();
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(CategoryProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(UsersProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(CustomerProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(VendorProfile).Assembly));
builder.Services.AddAutoMapper(cfg => cfg.AddMaps(typeof(ItemmasterProfile).Assembly));



builder.Services.AddApiVersioning(options =>

{

    options.DefaultApiVersion = new ApiVersion(1, 0);

    options.AssumeDefaultVersionWhenUnspecified = true;

    options.ReportApiVersions = true;

});

builder.Services.AddVersionedApiExplorer(options =>

{

    options.GroupNameFormat = "'v'VVV";

    options.SubstituteApiVersionInUrl = true;

});


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

app.UseMiddleware<ExceptionHandlingMiddleware>();

//if (app.Environment.IsDevelopment())
//{
    app.UseSwagger();
    app.UseSwaggerUI();
//}


// Configure the HTTP request pipeline.
// if (app.Environment.IsDevelopment())
//{
//  app.MapOpenApi();
//}
app.UseCors(AllowAngular);
app.UseAuthorization();

app.MapControllers();

app.Run();
