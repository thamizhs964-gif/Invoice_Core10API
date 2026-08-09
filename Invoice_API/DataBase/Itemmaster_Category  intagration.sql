USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_update]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_insert]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetbyId]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetbyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Getall]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Getall]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_update]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_update]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_update]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_insert]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetById]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_GetAll]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_category_delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
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
/****** Object:  Index [UQ__Customer__06678521B57BB96E]    Script Date: 02-08-2026 8.11.49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [UQ__Customer__06678521B57BB96E]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 8.11.49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 8.11.49 PM ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 8.11.49 PM ******/
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
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'CUST001', N'ABC Traders', N'Ramesh Kumar', N'9876543210', N'abc@gmail.com', N'12 MG Road', N'Near Bus Stand', N'Chennai', N'Tamil Nadu', N'India', N'600001', N'33ABCDE1234F1Z5', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'CUST002', N'Sri Vinayaga Stores', N'Suresh', N'9876543211', N'vinayaga@gmail.com', N'25 Gandhi Road', N'Anna Nagar', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33ABCDE1234F1Z6', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
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
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'CUST018', N'Shree Agencies', N'Senthil', N'9876543227', N'shree@gmail.com', N'14 Lake Road', N'Central', N'Thoothukudi', N'Tamil Nadu', N'India', N'628001', N'33ABCDE1234F1B4', 1, 0, N'Admin', CAST(N'2026-08-01T19:16:57.080' AS DateTime), NULL, NULL)
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
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (5, 6, N'ITM1006', N'1006', N'Tea Powder', N'Premium Tea Powder', N'KGS', CAST(450.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-07-30T16:23:03.240' AS DateTime), NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 8.11.49 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__06678521B57BB96E]    Script Date: 02-08-2026 8.11.49 PM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__06678521B57BB96E] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
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
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_category_GetAll]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_category_GetById]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_category_insert]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_category_update]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 02-08-2026 8.11.49 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 02-08-2026 8.11.49 PM ******/
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
    SET NOCOUNT ON;

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
            CreatedBy,
            CreatedDate,
            UpdatedBy,
            UpdatedDate,
            COUNT(*) OVER() AS TotalRecords,
            ROW_NUMBER() OVER (ORDER BY Id) AS RowNum
        FROM Customer
        WHERE
            IsDeleted = 0
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
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate,
        TotalRecords
    FROM PagedCustomers
    WHERE RowNum BETWEEN ((@PageNumber - 1) * @PageSize + 1)
                     AND (@PageNumber * @PageSize)
    ORDER BY Id;

            -- Total Records
    SELECT COUNT(*) AS TotalRecords
    FROM Customer
    WHERE
        (@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')
        AND (@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')
        AND (@City IS NULL OR City LIKE '%' + @City + '%');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 02-08-2026 8.11.49 PM ******/
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
    @IsActive BIT,
    @IsDeleted BIT,
    @CreatedBy NVARCHAR(100)
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
        CreatedBy
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
        @IsDeleted,
        @CreatedBy
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_update]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Customer_update]
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
     @IsActive bit,
     @IsDeleted bit
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
            IsDeleted = @IsDeleted,
            UpdatedBy    = SYSTEM_USER,
            UpdatedDate  = GETDATE()
        Where Id = @Id;
        end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_delete]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Itemmaster_delete]
(
  @Id INT
)
as
begin
      delete from Itemmaster
	  where @Id=Id;
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Getall]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_Itemmaster_Getall]
 as
   begin
        
 select 
       Id,
	   CatCode,
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
	   from Itemmaster
	   order by Id;
	end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetbyId]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_Itemmaster_GetbyId]
	   (
	         @Id Int
	   )
	   as
	     begin 
		 select 
       Id,
	   CatCode,
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
	   from Itemmaster
	   where @Id=Id;
	   end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_insert]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Itemmaster_insert]
( @catcode varchar(5),
  @ItemBarCode varchar(25),
  @ItemCode varchar(10), 
  @Itemname varchar(100), 
  @Description varchar(250), 
  @Uom varchar(3), 
  @Rate decimal(3), 
  @Minimumstock decimal(18,2), 
  @Maximumstock decimal(18,2), 
  @IsActive bit
  )
  AS
  BEGIN
  insert into Itemmaster
  ( 
    CatCode, 
	ItemBarCode, 
	Itemcode, 
	Itemname, 
	Description, 
	Uom, 
	Rate, 
	Minimumstock, 
	Maximumstock, 
	IsActive, 
	Createdby
  )
  values
  (
    @catcode, 
	@ItemBarCode, 
	@ItemCode, 
	@Itemname,
	@Description, 
	@Uom, 
	@Rate, 
	@Minimumstock, 
	@Maximumstock,
	@IsActive,
	SYSTEM_USER
 );
 end;
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_update]    Script Date: 02-08-2026 8.11.49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_update]
(
    @Id INT,
    @CatCode VARCHAR(5),
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250) = NULL,
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2) = NULL,
    @Minimumstock DECIMAL(18,2) = NULL,
    @Maximumstock DECIMAL(18,2) = NULL,
    @IsActive BIT = 1
)
AS
BEGIN
    UPDATE Itemmaster
    SET
        CatCode = @CatCode,
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
END;
GO
