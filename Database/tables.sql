USE [s16guest41]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/5/2016 1:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[addressId] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](128) NOT NULL,
	[city] [varchar](32) NOT NULL,
	[zipCode] [int] NULL,
	[stateCode] [varchar](2) NULL,
	[country] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Address_addressId] PRIMARY KEY CLUSTERED 
(
	[addressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[branchId] [int] IDENTITY(1,1) NOT NULL,
	[branchNum] [int] NOT NULL,
	[releaseId] [int] NOT NULL,
	[creationDatetime] [datetime] NOT NULL,
	[iteration] [tinyint] NOT NULL,
 CONSTRAINT [PK_Branch_branchId] PRIMARY KEY CLUSTERED 
(
	[branchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[releaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[branchNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[companyId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[addressId] [int] NULL,
 CONSTRAINT [PK_Company_companyId] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[fName] [varchar](64) NOT NULL,
	[lName] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[companyId] [int] NULL,
 CONSTRAINT [PK_Customer_customerId] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download](
	[downloadId] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[releaseId] [int] NOT NULL,
	[platformTypeId] [int] NOT NULL,
	[downloadDatetime] [datetime] NOT NULL,
 CONSTRAINT [PK_Download_downloadId] PRIMARY KEY CLUSTERED 
(
	[downloadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature](
	[featureId] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](128) NOT NULL,
	[featureTypeId] [tinyint] NOT NULL,
 CONSTRAINT [PK_Feature_featureId] PRIMARY KEY CLUSTERED 
(
	[featureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feature_Type]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature_Type](
	[featureTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[featureType] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Feature_Type_featureTypeId] PRIMARY KEY CLUSTERED 
(
	[featureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[phoneId] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](15) NOT NULL,
	[phoneTypeId] [tinyint] NOT NULL,
	[customerId] [int] NOT NULL,
 CONSTRAINT [PK_Phone_phoneId] PRIMARY KEY CLUSTERED 
(
	[phoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone_Type]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone_Type](
	[phoneTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[phoneType] [varchar](7) NOT NULL,
 CONSTRAINT [PK_PHONE_TYPE_phoneTypeId] PRIMARY KEY CLUSTERED 
(
	[phoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platform_Type]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platform_Type](
	[platformTypeId] [int] IDENTITY(1,1) NOT NULL,
	[platform] [varchar](16) NOT NULL,
 CONSTRAINT [PK_PLATFORM_TYPE_platformTypeId] PRIMARY KEY CLUSTERED 
(
	[platformTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](64) NOT NULL,
	[description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Product_productId] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release](
	[releaseId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [smallint] NOT NULL,
	[releaseDate] [date] NOT NULL,
	[releaseTypeId] [tinyint] NOT NULL,
	[releaseNum] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Release_releaseId] PRIMARY KEY CLUSTERED 
(
	[releaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release_Platform]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release_Platform](
	[releaseId] [int] NOT NULL,
	[platformTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Release_Platform_releaseId_platformTypeId] PRIMARY KEY CLUSTERED 
(
	[releaseId] ASC,
	[platformTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Release_Type]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release_Type](
	[releaseTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[releaseAType] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Release_Type_releaseTypeId] PRIMARY KEY CLUSTERED 
(
	[releaseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release_Version]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release_Version](
	[releaseId] [int] NOT NULL,
	[versionId] [int] NOT NULL,
 CONSTRAINT [PK_Release_Version_releaseId_versionId] PRIMARY KEY CLUSTERED 
(
	[releaseId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Version](
	[versionId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [smallint] NOT NULL,
	[versionCode] [varchar](16) NOT NULL,
	[versionDate] [date] NOT NULL,
 CONSTRAINT [PK_Version_versionId] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Version_Feature]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version_Feature](
	[versionId] [int] NOT NULL,
	[featureid] [int] NOT NULL,
 CONSTRAINT [PK_Version_Feature_versionId_featureId] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC,
	[featureid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Version_Platform]    Script Date: 5/5/2016 1:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version_Platform](
	[versionId] [int] NOT NULL,
	[platformTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Version_Platform_versionId_PlatformTypeId] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC,
	[platformTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_releaseId] FOREIGN KEY([releaseId])
REFERENCES [dbo].[Release] ([releaseId])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_releaseId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_addressId] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([addressId])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_addressId]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_companyId] FOREIGN KEY([companyId])
REFERENCES [dbo].[Company] ([companyId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_companyId]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_customerId] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_customerId]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_platformTypeId] FOREIGN KEY([platformTypeId])
REFERENCES [dbo].[Platform_Type] ([platformTypeId])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_platformTypeId]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_releaseId] FOREIGN KEY([releaseId])
REFERENCES [dbo].[Release] ([releaseId])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_releaseId]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_featureTypeId] FOREIGN KEY([featureTypeId])
REFERENCES [dbo].[Feature_Type] ([featureTypeId])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_featureTypeId]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_customerId] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_customerId]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_phoneTypeId] FOREIGN KEY([phoneTypeId])
REFERENCES [dbo].[Phone_Type] ([phoneTypeId])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_phoneTypeId]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_productId]
GO
ALTER TABLE [dbo].[Release_Platform]  WITH CHECK ADD  CONSTRAINT [FK_RELEASE_PLATFORM_platformTypeId] FOREIGN KEY([platformTypeId])
REFERENCES [dbo].[Platform_Type] ([platformTypeId])
GO
ALTER TABLE [dbo].[Release_Platform] CHECK CONSTRAINT [FK_RELEASE_PLATFORM_platformTypeId]
GO
ALTER TABLE [dbo].[Release_Platform]  WITH CHECK ADD  CONSTRAINT [FK_RELEASE_PLATFORM_releaseId] FOREIGN KEY([releaseId])
REFERENCES [dbo].[Release] ([releaseId])
GO
ALTER TABLE [dbo].[Release_Platform] CHECK CONSTRAINT [FK_RELEASE_PLATFORM_releaseId]
GO
ALTER TABLE [dbo].[Release_Version]  WITH CHECK ADD  CONSTRAINT [FK_Release_Version_releaseId] FOREIGN KEY([releaseId])
REFERENCES [dbo].[Release] ([releaseId])
GO
ALTER TABLE [dbo].[Release_Version] CHECK CONSTRAINT [FK_Release_Version_releaseId]
GO
ALTER TABLE [dbo].[Release_Version]  WITH CHECK ADD  CONSTRAINT [FK_Release_Version_versionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[Version] ([versionId])
GO
ALTER TABLE [dbo].[Release_Version] CHECK CONSTRAINT [FK_Release_Version_versionId]
GO
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_productId]
GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_featureId] FOREIGN KEY([featureid])
REFERENCES [dbo].[Feature] ([featureId])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_featureId]
GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_versionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[Version] ([versionId])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_versionId]
GO
ALTER TABLE [dbo].[Version_Platform]  WITH CHECK ADD  CONSTRAINT [FK_Version_Platform_platformTypeId] FOREIGN KEY([platformTypeId])
REFERENCES [dbo].[Platform_Type] ([platformTypeId])
GO
ALTER TABLE [dbo].[Version_Platform] CHECK CONSTRAINT [FK_Version_Platform_platformTypeId]
GO
ALTER TABLE [dbo].[Version_Platform]  WITH CHECK ADD  CONSTRAINT [FK_Version_Platform_versionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[Version] ([versionId])
GO
ALTER TABLE [dbo].[Version_Platform] CHECK CONSTRAINT [FK_Version_Platform_versionId]
GO
