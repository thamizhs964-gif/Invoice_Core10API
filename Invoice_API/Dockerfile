# ================================

# Stage 1: Build

# ================================

FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
 
WORKDIR /src
 
# Copy project file

COPY ["Invoice_API.csproj", "."]
 
# Restore NuGet packages

RUN dotnet restore "Invoice_API.csproj"
 
# Copy source code

COPY . .
 
# Publish application

RUN dotnet publish "Invoice_API.csproj" \

    -c Release \

    -o /app/publish \

    /p:UseAppHost=false
 
 
# ================================

# Stage 2: Runtime

# ================================

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
 
WORKDIR /app
 
# Copy published application

COPY --from=build /app/publish .
 
# ASP.NET Core container port

EXPOSE 8080
 
# Start the API

ENTRYPOINT ["dotnet", "Invoice_API.dll"]
 