USE [s16guest41]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/5/2016 4:40:57 PM ******/
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
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_addressId] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([addressId])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_addressId]
GO
