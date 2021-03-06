USE [s16guest41]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/5/2016 4:40:57 PM ******/
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
