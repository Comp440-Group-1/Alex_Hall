USE [s16guest41]
GO
/****** Object:  Table [dbo].[Feature_Type]    Script Date: 5/5/2016 4:40:57 PM ******/
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
