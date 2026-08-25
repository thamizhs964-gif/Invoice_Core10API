USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_update]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_insert]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_delete]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_UpdateLastLogin]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Users_Update]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_insert]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByUserName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByEmail]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_delete]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_update]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_insert]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetbyId]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetbyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Getall]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Getall]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_delete]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_update]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_delete]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_update]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_insert]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetById]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetAll]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_delete]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__CreatedD__5F7E2DAC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsDelete__5E8A0973]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsActive__5D95E53A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__CreatedDa__540C7B00]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsDeleted__531856C7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsActive__5224328E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF__Itemmaste__Creat__2BFE89A6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF_Itemmaster_CategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__Create__3493CFA7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsDele__339FAB6E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsActi__32AB8735]
GO
/****** Object:  Index [UQ__Vendor__10C18F5C4915F3F6]    Script Date: 25-08-2026 1.46.56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [UQ__Vendor__10C18F5C4915F3F6]
GO
/****** Object:  Index [UQ__Customer__06678521B57BB96E]    Script Date: 25-08-2026 1.46.56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [UQ__Customer__06678521B57BB96E]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 25-08-2026 1.46.56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP TABLE IF EXISTS [dbo].[Vendor]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25-08-2026 1.46.56 PM ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25-08-2026 1.46.56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25-08-2026 1.46.56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](20) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC07F97AED0E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 25-08-2026 1.46.56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemBarCode] [varchar](25) NOT NULL,
	[Itemcode] [varchar](10) NOT NULL,
	[Itemname] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[Uom] [varchar](3) NOT NULL,
	[Rate] [decimal](18, 2) NULL,
	[Minimumstock] [decimal](18, 2) NULL,
	[Maximumstock] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[Createdby] [varchar](100) NULL,
	[Createddate] [datetime] NULL,
	[Updatedby] [varchar](100) NULL,
	[Updateddate] [datetime] NULL,
 CONSTRAINT [PK__Itemmast__3214EC07F96C4A46] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-08-2026 1.46.56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[PasswordHash] [varchar](500) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](200) NOT NULL,
	[PhoneNumber] [varchar](25) NOT NULL,
	[AlternatePhone] [varchar](25) NULL,
	[AddressLine1] [varchar](255) NOT NULL,
	[AddressLine2] [varchar](255) NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[ZipCode] [varchar](20) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[DateOfBirth] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Users__3214EC0756B0106D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 25-08-2026 1.46.56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorCode] [varchar](20) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Vendor__3214EC0744712F54] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'RI001', N'Rice', N'All types of rice', 1, N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime), N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VE001', N'Vegitables', N'All types of vegitables', 1, N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime), N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'SN001', N'Snacks', N'All types of snacks', 1, N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime), N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'OI001', N'Oil', N'All types of oils', 1, N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime), N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SO001', N'Soap', N'All types of soaps', 1, N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime), N'sa', CAST(N'2026-08-02T17:44:10.987' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'GN001', N'General', N'General Stores', 1, N'sa', CAST(N'2026-08-02T18:09:33.253' AS DateTime), N'sa', CAST(N'2026-08-02T18:09:33.253' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'BO001', N'Bottle', N'All types of bottle', 1, N'sa', CAST(N'2026-08-02T18:30:13.690' AS DateTime), N'sa', CAST(N'2026-08-02T18:30:13.690' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'cat98', N'vijay', N'actor', 1, N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-12T10:47:53.653' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-12T10:57:09.463' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'cat09', N'str', N'actor', 1, N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-12T10:55:08.243' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'CUST001', N'ABC Traders', N'Ramesh Kumar', N'9876543210', N'abc@gmail.com', N'12 MG Roads', N'Near Bus Stand', N'Chennai', N'Tamil Nadu', N'India', N'600001', N'33ABCDE1234F1Z5', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-03T17:25:43.010' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'CUST002', N'Sri Vinayaga Stores', N'Suresh', N'9876543211', N'vinayaga@gmail.com', N'25 Gandhi Road', N'Amma Nagar', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33ABCDE1234F1Z6', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-03T17:26:02.430' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'CUST003', N'Fresh Mart', N'Arun Kumar', N'9876543212', N'freshmart@gmail.com', N'45 Bazaar Street', N'Town Hall', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'33ABCDE1234F1Z7', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'CUST004', N'Green Foods', N'Karthik', N'9876543213', N'greenfoods@gmail.com', N'18 Market Road', N'RS Puram', N'Coimbatore', N'Tamil Nadu', N'India', N'641002', N'33ABCDE1234F1Z8', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'CUST005', N'Royal Super Market', N'Vijay', N'9876543214', N'royal@gmail.com', N'22 Main Road', N'KK Nagar', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33ABCDE1234F1Z9', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'CUST006', N'City Grocers', N'Prakash', N'9876543215', N'city@gmail.com', N'78 Lake View', N'West Street', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33ABCDE1234F1A1', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'CUST007', N'Sunrise Traders', N'Dinesh', N'9876543216', N'sunrise@gmail.com', N'90 Gandhi Nagar', N'East Road', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33ABCDE1234F1A2', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'CUST008', N'Best Choice', N'Ganesh', N'9876543217', N'bestchoice@gmail.com', N'15 Cross Street', N'Old Bus Stand', N'Tiruppur', N'Tamil Nadu', N'India', N'641601', N'33ABCDE1234F1A3', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'CUST009', N'Modern Foods', N'Mohan', N'9876543218', N'modern@gmail.com', N'11 Gandhi Street', N'New Colony', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33ABCDE1234F1A4', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'CUST010', N'Quality Mart', N'Hari', N'9876543219', N'quality@gmail.com', N'65 Anna Salai', N'Central', N'Chennai', N'Tamil Nadu', N'India', N'600002', N'33ABCDE1234F1A5', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'CUST011', N'Elite Traders', N'Kumar', N'9876543220', N'elite@gmail.com', N'120 Main Road', N'North Street', N'Karur', N'Tamil Nadu', N'India', N'639001', N'33ABCDE1234F1A6', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'CUST012', N'Mega Stores', N'Rajesh', N'9876543221', N'mega@gmail.com', N'55 Park Avenue', N'South Road', N'Thanjavur', N'Tamil Nadu', N'India', N'613001', N'33ABCDE1234F1A7', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'CUST013', N'A1 Agencies', N'Saravanan', N'9876543222', N'a1@gmail.com', N'34 Temple Road', N'Bus Stand', N'Kumbakonam', N'Tamil Nadu', N'India', N'612001', N'33ABCDE1234F1A8', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'CUST014', N'Prime Enterprises', N'Manikandan', N'9876543223', N'prime@gmail.com', N'77 Market Lane', N'Railway Station', N'Nagercoil', N'Tamil Nadu', N'India', N'629001', N'33ABCDE1234F1A9', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'CUST015', N'Daily Needs', N'Baskar', N'9876543224', N'daily@gmail.com', N'88 South Street', N'Main Junction', N'Dindigul', N'Tamil Nadu', N'India', N'624001', N'33ABCDE1234F1B1', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'CUST016', N'Happy Mart', N'Murugan', N'9876543225', N'happy@gmail.com', N'21 College Road', N'New Bus Stand', N'Namakkal', N'Tamil Nadu', N'India', N'637001', N'33ABCDE1234F1B2', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'CUST017', N'Food Palace', N'Naveen', N'9876543226', N'foodpalace@gmail.com', N'31 High School Road', N'Market Area', N'Cuddalore', N'Tamil Nadu', N'India', N'607001', N'33ABCDE1234F1B3', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'CUST019', N'National Suppliers', N'Balaji', N'9876543228', N'national@gmail.com', N'56 Beach Road', N'Harbour', N'Nagapattinam', N'Tamil Nadu', N'India', N'611001', N'33ABCDE1234F1B5', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'CUST020', N'Universal Foods', N'Ravi', N'9876543229', N'universal@gmail.com', N'100 Ring Road', N'Industrial Area', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'33ABCDE1234F1B6', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (1, 7, N'ITM1001', N'390', N'bottele', N'1 Litre Bottle', N'LTR', CAST(50.00 AS Decimal(18, 2)), CAST(29.00 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.223' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-07-30T17:35:17.703' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (2, 7, N'ITM1002', N'1002', N'Steel Bottle', N'Stainless Steel Bottle', N'NOS', CAST(250.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.230' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-07-30T17:15:58.667' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (3, 6, N'ITM1004', N'1004', N'Sugar', N'Sugar Packet', N'KGS', CAST(55.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (4, 6, N'ITM1005', N'1005', N'Cooking Oil', N'Sunflower Oil', N'LTR', CAST(180.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (5, 7, N'string', N'string', N'biscare', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.240' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-16T17:36:36.260' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (6, 6, N'ITM1007', N'1007', N'Coffee Powder', N'Instant Coffee', N'KGS', CAST(650.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (7, 6, N'ITM1008', N'1008', N'Notebook', N'200 Pages Notebook', N'NOS', CAST(45.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (8, 6, N'ITM1009', N'1009', N'Ball Pen', N'Blue Ink Pen', N'NOS', CAST(10.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (9, 6, N'ITM1010', N'1010', N'Pencil', N'HB Pencil', N'NOS', CAST(5.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (10, 6, N'ITM1011', N'1011', N'Keyboard', N'USB Keyboard', N'NOS', CAST(750.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (11, 6, N'ITM1012', N'1012', N'Mouse', N'Wireless Mouse', N'NOS', CAST(550.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (12, 6, N'ITM1013', N'1013', N'Mobile Charger', N'Fast Charger', N'NOS', CAST(999.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (13, 6, N'ITM1014', N'1014', N'USB Cable', N'Type C Cable', N'NOS', CAST(250.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (14, 6, N'string', N'string', N'string', N'string', N'str', CAST(20.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-07-30T16:27:54.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (15, 6, N'bar28', N'bg98', N'can', N'wateer', N'LTR', CAST(39.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), 1, N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-07-30T16:30:38.230' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-07-30T16:32:56.993' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (32, 6, N'8901030016', N'ITM016', N'Red Chilli Powder 500g', N'Spicy red chilli powder', N'PKT', CAST(95.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (33, 6, N'8901030017', N'ITM017', N'Turmeric Powder 500g', N'Pure turmeric powder', N'PKT', CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (34, 6, N'8901030018', N'ITM018', N'Coriander Powder 500g', N'Fresh coriander powder', N'PKT', CAST(75.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (35, 6, N'8901030019', N'ITM019', N'Jeera 250g', N'Whole cumin seeds', N'PKT', CAST(120.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (36, 6, N'8901030020', N'ITM020', N'Mustard Seeds 250g', N'Premium mustard seeds', N'PKT', CAST(55.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (37, 6, N'8901030021', N'ITM021', N'Green Gram 1kg', N'Whole green gram', N'PKT', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (38, 6, N'8901030022', N'ITM022', N'Black Gram 1kg', N'Whole black gram', N'PKT', CAST(125.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (39, 6, N'8901030023', N'ITM023', N'Moong Dal 1kg', N'Split green gram dal', N'PKT', CAST(140.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (40, 6, N'8901030024', N'ITM024', N'Urad Dal 1kg', N'Premium urad dal', N'PKT', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (41, 6, N'8901030025', N'ITM025', N'Ragi Flour 1kg', N'Healthy finger millet flour', N'PKT', CAST(85.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (42, 6, N'8901030026', N'ITM026', N'Corn Flour 500g', N'Fine corn flour', N'PKT', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (43, 6, N'8901030027', N'ITM027', N'Tomato Ketchup 500g', N'Rich tomato ketchup', N'BTL', CAST(95.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (44, 6, N'8901030028', N'ITM028', N'Jam Mixed Fruit 500g', N'Mixed fruit jam', N'BTL', CAST(140.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (45, 6, N'8901030029', N'ITM029', N'Peanut Butter 500g', N'Creamy peanut butter', N'BTL', CAST(220.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (46, 6, N'8901030030', N'ITM030', N'Honey 500g', N'Natural pure honey', N'BTL', CAST(280.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (47, 6, N'8901030031', N'ITM031', N'Toothpaste 150g', N'Herbal toothpaste', N'PCS', CAST(95.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (48, 6, N'8901030032', N'ITM032', N'Bath Soap 125g', N'Moisturizing bath soap', N'PCS', CAST(40.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (49, 6, N'8901030033', N'ITM033', N'Hand Wash 250ml', N'Liquid hand wash', N'BTL', CAST(75.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (50, 6, N'8901030034', N'ITM034', N'Floor Cleaner 1L', N'Disinfectant floor cleaner', N'BTL', CAST(180.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (51, 6, N'8901030035', N'ITM035', N'Air Freshener 300ml', N'Floral room freshener', N'BTL', CAST(165.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'admin', CAST(N'2026-08-02T19:29:51.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (52, 1, N'TEST001', N'ITM001', N'Test Item', N'Test ItemMaster record', N'KG', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-08-12T08:33:09.860' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'thamiz001', N'thamizh001@gmail.com', N'Hash123', N'thamizh', NULL, N'S', N'Thamizh S', N'9876543210', NULL, N'12 Main Road', NULL, N'Neyveli', N'Tamil Nadu', N'607801', N'India', CAST(N'2002-05-15' AS Date), 1, 0, CAST(N'2026-08-25T07:15:57.653' AS DateTime), N'Admin', CAST(N'2026-08-25T07:11:44.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'str001', N'str001@gmail.com', N'Hash123', N'Akash', NULL, N'S', N' str', N'9876543210', NULL, N'128 Main Road', NULL, N'VPM', N'Tamil Nadu', N'607801', N'India', CAST(N'2002-05-15' AS Date), 0, 1, NULL, N'Admin', CAST(N'2026-08-25T07:11:44.000' AS DateTime), N'DA', CAST(N'2026-08-25T07:11:44.023' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'string', N'string', N'Hash123', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-25' AS Date), 0, 1, NULL, N'Admin', CAST(N'2026-08-25T07:17:40.493' AS DateTime), N'string', CAST(N'2026-08-25T08:12:18.377' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Thamizh', N'thamizhs964@gmail.com', N'AQAAAAIAAYagAAAAELsvZqOoF0wQ278ec/ZVg87C3ViyPDDJ3v1xl3i4tA8todHzAI+GW3vd/fCmW/ctWA==', N'thamizh', N'string', N'S', N'Thamizh S', N'9003695279', N'string', N'main road 12b', N'string', N'vpm', N'tamil nadu', N'605 301', N'india', CAST(N'2006-01-24' AS Date), 1, 0, CAST(N'2026-08-25T08:03:23.997' AS DateTime), N'STR', CAST(N'2026-08-25T08:02:47.187' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'V001', N'ABC Traders Updated', N'Arun Kumar', N'9876543210', N'abc@vendor.com', N'123 Anna Salai', N'Near Bus Stand', N'Chennai', N'Tamil Nadu', N'India', N'600001', N'33ABCDE1234F1Z5', 0, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), N'DESKTOP-RRIC29Q\Acer', CAST(N'2026-08-11T21:02:07.953' AS DateTime))
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'V002', N'Global Suppliers', N'Bala', N'9876543202', N'global@vendor.com', N'45 MG Road', N'Sector 2', N'Bengaluru', N'Karnataka', N'India', N'560001', N'29ABCDE1234F1Z6', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'V003', N'Prime Distributors', N'Charles', N'9876543203', N'prime@vendor.com', N'78 Market Road', N'West Street', N'Hyderabad', N'Telangana', N'India', N'500001', N'36ABCDE1234F1Z7', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'V004', N'Sun Enterprises', N'Dinesh', N'9876543204', N'sun@vendor.com', N'14 Gandhi Road', N'North Avenue', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'33ABCDE1234F1Z8', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'V005', N'Bright Agencies', N'Eswar', N'9876543205', N'bright@vendor.com', N'90 Lake View', N'Block A', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33ABCDE1234F1Z9', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'V006', N'Modern Traders', N'Farooq', N'9876543206', N'modern@vendor.com', N'23 Cross Road', N'East End', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33ABCDE1234F1Y1', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'V007', N'Elite Vendors', N'Ganesh', N'9876543207', N'elite@vendor.com', N'55 Ring Road', N'Phase 1', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33ABCDE1234F1Y2', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'V008', N'Skyline Suppliers', N'Hari', N'9876543208', N'skyline@vendor.com', N'66 Central Street', N'Main Area', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33ABCDE1234F1Y3', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'V009', N'Metro Distributors', N'Imran', N'9876543209', N'metro@vendor.com', N'101 Gandhi Nagar', N'South Street', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33ABCDE1234F1Y4', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'V010', N'Vision Enterprises', N'John', N'9876543210', N'vision@vendor.com', N'11 Church Road', N'West Block', N'Tirunelveli', N'Tamil Nadu', N'India', N'627001', N'33ABCDE1234F1Y5', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'V011', N'Royal Traders', N'Karthik', N'9876543211', N'royal@vendor.com', N'25 Main Road', N'Sector A', N'Chennai', N'Tamil Nadu', N'India', N'600002', N'33ABCDE1234F1Y6', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'V012', N'Victory Suppliers', N'Logesh', N'9876543212', N'victory@vendor.com', N'40 Park Street', N'North Zone', N'Bengaluru', N'Karnataka', N'India', N'560002', N'29ABCDE1234F1Y7', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'V013', N'Green Agencies', N'Manoj', N'9876543213', N'green@vendor.com', N'89 Hill Road', N'Near Temple', N'Hyderabad', N'Telangana', N'India', N'500002', N'36ABCDE1234F1Y8', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'V014', N'Shree Enterprises', N'Naveen', N'9876543214', N'shree@vendor.com', N'92 Bazaar Road', N'Block B', N'Madurai', N'Tamil Nadu', N'India', N'625002', N'33ABCDE1234F1Y9', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'V015', N'Supreme Traders', N'Prakash', N'9876543215', N'supreme@vendor.com', N'15 High Road', N'Central', N'Coimbatore', N'Tamil Nadu', N'India', N'641002', N'33ABCDE1234F1X1', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'V016', N'Quality Distributors', N'Ramesh', N'9876543216', N'quality@vendor.com', N'67 Temple Road', N'Near School', N'Salem', N'Tamil Nadu', N'India', N'636002', N'33ABCDE1234F1X2', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'V017', N'Excel Suppliers', N'Sathish', N'9876543217', N'excel@vendor.com', N'73 Lake Road', N'Ward 3', N'Trichy', N'Tamil Nadu', N'India', N'620002', N'33ABCDE1234F1X3', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'V018', N'Dynamic Agencies', N'Thomas', N'9876543218', N'dynamic@vendor.com', N'81 River Road', N'East Side', N'Erode', N'Tamil Nadu', N'India', N'638002', N'33ABCDE1234F1X4', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'V019', N'United Traders', N'Uday', N'9876543219', N'united@vendor.com', N'91 Station Road', N'West Side', N'Vellore', N'Tamil Nadu', N'India', N'632002', N'33ABCDE1234F1X5', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'V020', N'Silver Enterprises', N'Vijay', N'9876543220', N'silver@vendor.com', N'35 College Road', N'South End', N'Tirunelveli', N'Tamil Nadu', N'India', N'627002', N'33ABCDE1234F1X6', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'V021', N'National Traders', N'Arvind', N'9876543221', N'national@vendor.com', N'14 Bus Stand', N'Street 1', N'Chennai', N'Tamil Nadu', N'India', N'600003', N'33ABCDE1234F1X7', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, N'V022', N'Capital Suppliers', N'Bharath', N'9876543222', N'capital@vendor.com', N'24 Ring Road', N'Street 2', N'Bengaluru', N'Karnataka', N'India', N'560003', N'29ABCDE1234F1X8', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'V023', N'Future Agencies', N'Chandran', N'9876543223', N'future@vendor.com', N'44 Anna Nagar', N'Street 3', N'Hyderabad', N'Telangana', N'India', N'500003', N'36ABCDE1234F1X9', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, N'V024', N'Classic Distributors', N'Deepak', N'9876543224', N'classic@vendor.com', N'54 Gandhi Street', N'Street 4', N'Madurai', N'Tamil Nadu', N'India', N'625003', N'33ABCDE1234F1W1', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (25, N'V025', N'Apex Enterprises', N'Elango', N'9876543225', N'apex@vendor.com', N'64 Park Road', N'Street 5', N'Coimbatore', N'Tamil Nadu', N'India', N'641003', N'33ABCDE1234F1W2', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (26, N'V026', N'Star Suppliers', N'Francis', N'9876543226', N'star@vendor.com', N'74 Lake Street', N'Street 6', N'Salem', N'Tamil Nadu', N'India', N'636003', N'33ABCDE1234F1W3', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, N'V027', N'Perfect Agencies', N'Gokul', N'9876543227', N'perfect@vendor.com', N'84 Market Road', N'Street 7', N'Trichy', N'Tamil Nadu', N'India', N'620003', N'33ABCDE1234F1W4', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, N'V028', N'Galaxy Traders', N'Hemant', N'9876543228', N'galaxy@vendor.com', N'94 Main Road', N'Street 8', N'Erode', N'Tamil Nadu', N'India', N'638003', N'33ABCDE1234F1W5', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, N'V029', N'Pioneer Distributors', N'Jeeva', N'9876543229', N'pioneer@vendor.com', N'104 Cross Road', N'Street 9', N'Vellore', N'Tamil Nadu', N'India', N'632003', N'33ABCDE1234F1W6', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, N'V030', N'Universal Suppliers', N'Kishore', N'9876543230', N'universal@vendor.com', N'114 South Road', N'Street 10', N'Tirunelveli', N'Tamil Nadu', N'India', N'627003', N'33ABCDE1234F1W7', 1, 0, N'Admin', CAST(N'2026-08-06T08:42:17.980' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 25-08-2026 1.46.57 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__06678521B57BB96E]    Script Date: 25-08-2026 1.46.57 PM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__06678521B57BB96E] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Vendor__10C18F5C4915F3F6]    Script Date: 25-08-2026 1.46.57 PM ******/
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [UQ__Vendor__10C18F5C4915F3F6] UNIQUE NONCLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsActi__32AB8735]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__339FAB6E]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__3493CFA7]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF__Itemmaste__Creat__2BFE89A6]  DEFAULT (getdate()) FOR [Createddate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsActive__5224328E]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__531856C7]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreatedDa__540C7B00]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsActive__5D95E53A]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsDelete__5E8A0973]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__CreatedD__5F7E2DAC]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_delete]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_category_delete]
(
@Id int
)

as 
begin

delete from Category

where id=@Id

end
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetAll]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    CREATE PROCEDURE [dbo].[sp_category_GetAll]
AS
BEGIN
    SELECT
        Id,
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Category;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetById]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_category_GetById]

(
@Id int
)
    
AS
BEGIN
    SELECT
        Id,
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Category

    where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetPaged]
 
    @Code        VARCHAR(5) = NULL,
    @Name        VARCHAR(25) = NULL,
    @IsActive    BIT = NULL,
    @PageNumber  INT = 1,
    @PageSize    INT = 10
AS
BEGIN
    SET NOCOUNT ON;
    IF (@PageNumber <= 0) SET @PageNumber = 1;
    IF (@PageSize <= 0) SET @PageSize = 10;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate,

        COUNT(*) OVER() AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive)

    ORDER BY Id ASC

    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;

    SELECT

        COUNT(1) AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive);
 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_category_insert]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_category_insert]
(
    @Code VARCHAR(5),
    @Name VARCHAR(25),
    @Description VARCHAR(100),
    @IsActive BIT
   ) 
AS
BEGIN
    INSERT INTO Category
    (
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @Code,
        @Name,
        @Description,
        @IsActive,
        SYSTEM_USER,
        GETDATE()
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_category_update]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_category_update]
(
@Id int,
@code varchar(5),
@name varchar(25),
@Description varchar(100),
@IsActive bit
)
as
begin

update Category
set


Code=@code,
Name=@name,
Description=@Description,
IsActive=@IsActive,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

where Id=@Id

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_delete]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    create procedure [dbo].[sp_Customer_delete]
(
  @Id INT
)
as
begin
      delete from Customer
	  where @Id=Id;
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_GetAll]
as
 begin 
 select 
    Id,
    CustomerCode,
    CustomerName,
    ContactPerson,
    MobileNo,
    Email,
    Address1,
    Address2,
    City,
    State,
    Country,
    ZipCode,
    GstNo,
    IsActive,
    CreatedBy,
    CreatedDate,
    UpdatedBy,
    UpdatedDate,
    IsDeleted from Customer
    order by Id;
end;    
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_GetById]
(
   @Id int 
)
as
  begin 
       select 
    Id,
    CustomerCode,
    CustomerName,
    ContactPerson,
    MobileNo,
    Email,
    Address1,
    Address2,
    City,
    State,
    Country,
    ZipCode,
    GstNo,
    IsActive,
    CreatedBy,
    CreatedDate,
    UpdatedBy,
    UpdatedDate,
    IsDeleted from Customer
    where Id = @Id;
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetPaged]
(
    @CustomerCode VARCHAR(20) = NULL,
    @CustomerName NVARCHAR(100) = NULL,
    @City NVARCHAR(100) = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT off;

    ;WITH PagedCustomers AS
    (
        SELECT
            Id,
            CustomerCode,
            CustomerName,
            ContactPerson,
            MobileNo,
            Email,
            Address1,
            Address2,
            City,
            State,
            Country,
            ZipCode,
            GstNo,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate,
            UpdatedBy,
            UpdatedDate,
            ROW_NUMBER() OVER
            (
                ORDER BY Id ASC
            ) AS RowNum
        FROM Customer
        WHERE IsDeleted = 0
        AND (@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')
        AND (@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')
        AND (@City IS NULL OR City LIKE '%' + @City + '%')
    )

    SELECT
        Id,
        CustomerCode,
        CustomerName,
        ContactPerson,
        MobileNo,
        Email,
        Address1,
        Address2,
        City,
        State,
        Country,
        ZipCode,
        GstNo,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM PagedCustomers
    WHERE RowNum BETWEEN 
        ((@PageNumber - 1) * @PageSize) + 1
        AND (@PageNumber * @PageSize);


    -- Total Records
    SELECT COUNT(*) AS TotalRecords
    FROM Customer
    WHERE IsDeleted = 0
    AND (@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')
    AND (@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')
    AND (@City IS NULL OR City LIKE '%' + @City + '%');

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Insert]
(
    @CustomerCode VARCHAR(20),
    @CustomerName NVARCHAR(100),
    @ContactPerson NVARCHAR(100),
    @MobileNo VARCHAR(20),
    @Email VARCHAR(100),
    @Address1 NVARCHAR(200),
    @Address2 NVARCHAR(200),
    @City NVARCHAR(100),
    @State NVARCHAR(100),
    @Country NVARCHAR(100),
    @ZipCode VARCHAR(20),
    @GstNo VARCHAR(50),
    @IsActive BIT
)
AS
BEGIN
    INSERT INTO Customer
    (
        CustomerCode,
        CustomerName,
        ContactPerson,
        MobileNo,
        Email,
        Address1,
        Address2,
        City,
        [State],
        Country,
        ZipCode,
        GstNo,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @CustomerCode,
        @CustomerName,
        @ContactPerson,
        @MobileNo,
        @Email,
        @Address1,
        @Address2,
        @City,
        @State,
        @Country,
        @ZipCode,
        @GstNo,
        @IsActive,
        0,
        SYSTEM_USER,
        GETDATE());

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_update]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Customer_update]
    (
     @Id int,
     @CustomerCode varchar(20),
     @CustomerName nvarchar(100),
     @ContactPerson nvarchar(100),
     @MobileNo varchar(20),
     @Email varchar(100),
     @Address1 nvarchar(200),
     @Address2 nvarchar(200),
     @City nvarchar(100),
     @State nvarchar(100),
     @Country nvarchar(100),
     @ZipCode varchar(20),
     @GstNo varchar(20),
     @IsActive bit
    )
    as
    begin
         update Customer
         set
            CustomerCode = @CustomerCode,
            CustomerName = @CustomerName,
            ContactPerson = @ContactPerson,
            MobileNo = @MobileNo,
            Email = @Email,
            Address1 = @Address1,
            Address2 = @Address2,
            City = @City,
            [State] = @State,
            Country = @Country,
            ZipCode = @ZipCode,
            GstNo = @GstNo,
            IsActive = @IsActive,
            UpdatedBy    = SYSTEM_USER,
            UpdatedDate  = GETDATE()
        Where Id = @Id;
        end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_delete]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Itemmaster
    WHERE Id = @Id 
	 SELECT @Id AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Getall]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Getall]
AS
BEGIN
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    ORDER BY I.Id ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetbyId]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetbyId]
(
    @Id INT
)
AS
BEGIN
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    WHERE I.Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]

(

    @CategoryId INT = NULL,

    @ItemBarCode VARCHAR(25) = NULL,

    @ItemCode VARCHAR(10) = NULL,

    @ItemName VARCHAR(100) = NULL,

    @Uom VARCHAR(3) = NULL,

    @IsActive BIT = NULL,

    @PageNumber INT = 1,

    @PageSize INT = 10

)

AS

BEGIN

    SET NOCOUNT OFF;
 
    -- Default paging values

    IF (@PageNumber <= 0)

        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)

        SET @PageSize = 10;
 
    DECLARE @Offset INT;
 
    SET @Offset = (@PageNumber - 1) * @PageSize;
 
 
    ------------------------------------------------------------

    -- RESULT SET 1 : PAGED ITEMMASTER DATA

    ------------------------------------------------------------
 
    SELECT

        I.Id,

        I.CategoryId,
 
        C.Code AS CategoryCode,

        C.Name AS CategoryName,
 
        I.ItemBarCode,

        I.Itemcode,

        I.Itemname,

        I.Description,

        I.Uom,

        I.Rate,

        I.Minimumstock,

        I.Maximumstock,

        I.IsActive,

        I.Createdby,

        I.Createddate,

        I.Updatedby,

        I.Updateddate
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C

        ON I.CategoryId = C.Id
 
    WHERE

        (@CategoryId IS NULL

            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL

            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL

            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL

            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL

            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL

            OR I.IsActive = @IsActive)
 
    ORDER BY I.Id DESC
 
    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;
 
 
    ------------------------------------------------------------

    -- RESULT SET 2 : TOTAL RECORD COUNT

    ------------------------------------------------------------
 
    SELECT

        COUNT(1) AS TotalRecords
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C

        ON I.CategoryId = C.Id
 
    WHERE

        (@CategoryId IS NULL

            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL

            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL

            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL

            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL

            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL

            OR I.IsActive = @IsActive);
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_insert]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_insert]
(
    @CategoyId INT,
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
)
AS
BEGIN
    INSERT INTO Itemmaster
    (
        CategoryId, 
		ItemBarCode, 
		Itemcode, 
		Itemname,
        Description, 
		Uom, 
		Rate,
        Minimumstock, 
		Maximumstock,
        IsActive, 
		Createdby, 
		Createddate,
        Updatedby, 
		Updateddate
    )
    VALUES
    (
        @CategoyId, 
		@ItemBarCode, 
		@Itemcode, 
		@Itemname,
        @Description, 
		@Uom, 
		@Rate,
        @Minimumstock, 
		@Maximumstock,
        @IsActive, 
		SYSTEM_USER,
		GETDATE(),
        NULL, 
		NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_update]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_update]

(

    @Id INT,

    @CategoryId INT,

    @ItemBarCode VARCHAR(25),

    @Itemcode VARCHAR(10),

    @Itemname VARCHAR(100),

    @Description VARCHAR(250),

    @Uom VARCHAR(3),

    @Rate DECIMAL(18,2),

    @Minimumstock DECIMAL(18,2),

    @Maximumstock DECIMAL(18,2),

    @IsActive BIT

)

AS

BEGIN

    --SET NOCOUNT ON;

    UPDATE dbo.Itemmaster

    SET

        CategoryId = @CategoryId,

        ItemBarCode = @ItemBarCode,

        Itemcode = @Itemcode,

        Itemname = @Itemname,

        Description = @Description,

        Uom = @Uom,

        Rate = @Rate,

        Minimumstock = @Minimumstock,

        Maximumstock = @Maximumstock,

        IsActive = @IsActive,

        Updatedby = SYSTEM_USER,

        Updateddate = GETDATE()

    WHERE Id = @Id;

    SELECT @Id AS Id;

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_delete]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_delete]
(
    @Id        INT,
    @UpdatedBy NVARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Id = @Id
          AND IsDeleted = 0
    )
    BEGIN
        SELECT CAST(0 AS BIT) AS Success;
        RETURN;
    END;
 
    UPDATE dbo.Users
    SET
        IsDeleted  = 1,
        IsActive   = 0,
        UpdatedBy  = @UpdatedBy,
        UpdatedDate = GETUTCDATE()
    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetAll]
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        LastLoginDate,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.Users
    WHERE IsDeleted = 0
    ORDER BY Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByEmail]
(
    @Email VARCHAR(255)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        LastName,
        DisplayName,
        IsActive,
        IsDeleted
    FROM dbo.Users
    WHERE Email = @Email;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        LastLoginDate,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.Users
    WHERE Id = @Id
      AND IsDeleted = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByUserName]

(

    @UserName VARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        PasswordHash,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        IsActive,

        IsDeleted,

        LastLoginDate

    FROM dbo.Users

    WHERE UserName = @UserName;

END


GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]
(
    @UserName    VARCHAR(100) = NULL,
    @Email       VARCHAR(255) = NULL,
    @FirstName   VARCHAR(100) = NULL,
    @LastName    VARCHAR(100) = NULL,
    @IsActive    BIT = NULL,
    @PageNumber  INT = 1,
    @PageSize    INT = 10
)
AS
BEGIN
    SET NOCOUNT OFF;
 
    IF (@PageNumber <= 0)
        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)
        SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    /*
        ============================================================
        RESULT SET 1
        Paged User Records
        ============================================================
    */
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        LastLoginDate,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate,
 
        COUNT(*) OVER() AS TotalRecords
 
    FROM dbo.Users
 
    WHERE
        IsDeleted = 0
 
        AND
        (
            @UserName IS NULL
            OR UserName LIKE '%' + @UserName + '%'
        )
 
        AND
        (
            @Email IS NULL
            OR Email LIKE '%' + @Email + '%'
        )
 
        AND
        (
            @FirstName IS NULL
            OR FirstName LIKE '%' + @FirstName + '%'
        )
 
        AND
        (
            @LastName IS NULL
            OR LastName LIKE '%' + @LastName + '%'
        )
 
        AND
        (
            @IsActive IS NULL
            OR IsActive = @IsActive
        )
 
    ORDER BY Id ASC
 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
 
 
    /*
        ============================================================
        RESULT SET 2
        Total Records
        ============================================================
    */
 
    SELECT
        COUNT(1) AS TotalRecords
 
    FROM dbo.Users
 
    WHERE
        IsDeleted = 0
 
        AND
        (
            @UserName IS NULL
            OR UserName LIKE '%' + @UserName + '%'
        )
 
        AND
        (
            @Email IS NULL
            OR Email LIKE '%' + @Email + '%'
        )
 
        AND
        (
            @FirstName IS NULL
            OR FirstName LIKE '%' + @FirstName + '%'
        )
 
        AND
        (
            @LastName IS NULL
            OR LastName LIKE '%' + @LastName + '%'
        )
 
        AND
        (
            @IsActive IS NULL
            OR IsActive = @IsActive
        );
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_insert]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_insert]
(
    @UserName       VARCHAR(100),
    @Email          VARCHAR(255),
    @PasswordHash   VARCHAR(500),
    @FirstName      VARCHAR(100),
    @MiddleName     VARCHAR(100) = NULL,
    @LastName       VARCHAR(100),
    @DisplayName    VARCHAR(200),
    @PhoneNumber    VARCHAR(25),
    @AlternatePhone VARCHAR(25) = NULL,
    @AddressLine1   VARCHAR(255),
    @AddressLine2   VARCHAR(255) = NULL,
    @City           VARCHAR(100),
    @State          VARCHAR(100),
    @ZipCode        VARCHAR(20),
    @Country        VARCHAR(100),
    @DateOfBirth    DATE = NULL,
    @IsActive       BIT = 1,
    @CreatedBy      NVARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE UserName = @UserName
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50001, 'Username already exists.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Email = @Email
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50002, 'Email already exists.', 1;
    END;
 
    INSERT INTO dbo.Users
    (
        UserName,
        Email,
        PasswordHash,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @UserName,
        @Email,
        @PasswordHash,
        @FirstName,
        @MiddleName,
        @LastName,
        @DisplayName,
        @PhoneNumber,
        @AlternatePhone,
        @AddressLine1,
        @AddressLine2,
        @City,
        @State,
        @ZipCode,
        @Country,
        @DateOfBirth,
        @IsActive,
        0,
        @CreatedBy,
        GETUTCDATE()
    );
 
    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Users_Update]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_Users_Update]
(
    @Id             INT,
    @UserName       VARCHAR(100),
    @Email          VARCHAR(255),
    @FirstName      VARCHAR(100),
    @MiddleName     VARCHAR(100) = NULL,
    @LastName       VARCHAR(100),
    @DisplayName    VARCHAR(200),
    @PhoneNumber    VARCHAR(25),
    @AlternatePhone VARCHAR(25) = NULL,
    @AddressLine1   VARCHAR(255),
    @AddressLine2   VARCHAR(255) = NULL,
    @City           VARCHAR(100),
    @State          VARCHAR(100),
    @ZipCode        VARCHAR(20),
    @Country        VARCHAR(100),
    @DateOfBirth    DATE = NULL,
    @IsActive       BIT,
    @UpdatedBy      NVARCHAR(100)
)
AS
BEGIN
    -- SET NOCOUNT ON;
 
    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Id = @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50003, 'User not found.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE UserName = @UserName
          AND Id <> @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50004, 'Username already exists.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Email = @Email
          AND Id <> @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50005, 'Email already exists.', 1;
    END;
 
    UPDATE dbo.Users
    SET
        UserName       = @UserName,
        Email          = @Email,
        FirstName      = @FirstName,
        MiddleName     = @MiddleName,
        LastName       = @LastName,
        DisplayName    = @DisplayName,
        PhoneNumber    = @PhoneNumber,
        AlternatePhone = @AlternatePhone,
        AddressLine1   = @AddressLine1,
        AddressLine2   = @AddressLine2,
        City           = @City,
        State          = @State,
        ZipCode        = @ZipCode,
        Country        = @Country,
        DateOfBirth    = @DateOfBirth,
        IsActive       = @IsActive,
        UpdatedBy      = @UpdatedBy,
        UpdatedDate    = GETUTCDATE()
    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_UpdateLastLogin]

(

    @Id INT

)

AS

BEGIN

    SET NOCOUNT ON;
 
    UPDATE dbo.Users

    SET

        LastLoginDate = GETUTCDATE()

    WHERE Id = @Id

      AND IsDeleted = 0

      AND IsActive = 1;
 
    SELECT CAST(1 AS BIT) AS Success;

END

 
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_delete]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Vendor_delete]
    (
       @Id int
   )
   AS
     begin
          delete from Vendor
          where @Id = Id;
    end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        VendorCode,
        VendorName,
        ContactPerson,
        MobileNo,
        Email,
        Address1,
        Address2,
        City,
        State,
        Country,
        ZipCode,
        GstNo,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Vendor
    WHERE IsDeleted = 0
    ORDER BY Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Vendor_GetById]
( 
  @Id int 
)
 as
   begin 
         select
                Id,
                VendorCode,
                VendorName,
                ContactPerson,
                MobileNo,
                Email,
                Address1,
                Address2,
                City,
                State,
                Country,
                ZipCode,
                GstNo,
                IsActive,
                IsDeleted,
                CreatedBy,
                CreatedDate,
                UpdatedBy,
                UpdatedDate
             from Vendor
             where @Id = Id;
             end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[sp_Vendor_GetPaged]
(
    @VendorCode VARCHAR(20) = NULL,
    @VendorName NVARCHAR(100) = NULL,
    @City NVARCHAR(100) = NULL,
    @IsActive BIT = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH PagedVendor AS
    (
        SELECT
            Id,
            VendorCode,
            VendorName,
            ContactPerson,
            MobileNo,
            Email,
            Address1,
            Address2,
            City,
            State,
            Country,
            ZipCode,
            GstNo,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate,
            UpdatedBy,
            UpdatedDate,
            ROW_NUMBER() OVER (ORDER BY Id ASC) AS RowNum
        FROM Vendor
        WHERE
            (@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')
            AND (@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')
            AND (@City IS NULL OR City LIKE '%' + @City + '%')
            AND (@IsActive IS NULL OR IsActive = @IsActive)
            AND IsDeleted = 0
    )

    SELECT
        Id,
        VendorCode,
        VendorName,
        ContactPerson,
        MobileNo,
        Email,
        Address1,
        Address2,
        City,
        State,
        Country,
        ZipCode,
        GstNo,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM PagedVendor
    WHERE RowNum BETWEEN ((@PageNumber - 1) * @PageSize) + 1
                     AND (@PageNumber * @PageSize);

    SELECT COUNT(*) AS TotalRecords
    FROM Vendor
    WHERE
        (@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')
        AND (@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')
        AND (@City IS NULL OR City LIKE '%' + @City + '%')
        AND (@IsActive IS NULL OR IsActive = @IsActive)
        AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_insert]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Vendor_insert]
(
 @VendorCode varchar(20),
 @VendorName nvarchar(100),
 @ContactPerson nvarchar(100),
 @MobileNo varchar(100),
 @Email varchar(100),
 @Address1 nvarchar(200),
 @Address2 nvarchar(200),
 @City nvarchar(100),
 @State nvarchar(100),
 @Country nvarchar(100),
 @ZipCode varchar(20),
 @GstNo varchar(50),
 @IsActive bit
 )
 as
   begin 
         insert into Vendor
         (
          VendorCode,
          VendorName,
          ContactPerson,
          MobileNo,
          Email,
          Address1,
          Address2,
          City,
          State,
          Country,
          ZipCode,
          GstNo,
          IsActive,
          IsDeleted,
          CreatedBy,
          CreatedDate
         )
         values
         (
           @VendorCode,
           @VendorName,
           @ContactPerson,
           @MobileNo,
           @Email,
           @Address1,
           @Address2,
           @City,
           @State,
           @Country,
           @ZipCode,
           @GstNo,
           @IsActive,
           0,
         SYSTEM_USER,
         GETDATE());

           END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_update]    Script Date: 25-08-2026 1.46.57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Vendor_update]
   (
     @Id int,
     @VendorCode varchar(20),
     @VendorName nvarchar(100),
     @ContactPerson nvarchar(100),
     @MobileNo varchar(100),
     @Email varchar(100),
     @Address1 nvarchar(200),
     @Address2 nvarchar(200),
     @City nvarchar(100),
     @State nvarchar(100),
     @Country nvarchar(100),
     @ZipCode varchar(20),
     @GstNo varchar(50),
     @IsActive bit )

     as
       begin 
            update Vendor
        set
          VendorCode = @VendorCode,
          VendorName = @VendorName,
          ContactPerson = @ContactPerson,
          MobileNo = @MobileNo,
          Email = @Email,
          Address1 = @Address1,
          Address2 = @Address2,
          City = @City,
          State = @State,
          Country = @Country,
          ZipCode = @ZipCode,
          GstNo = @GstNo,
          IsActive = @IsActive,
          UpdatedBy = SYSTEM_USER,
          UpdatedDate = GETDATE()
        where Id = @Id;
        END;
   
GO
