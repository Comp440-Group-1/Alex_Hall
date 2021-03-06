USE [s16guest41]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/5/2016 4:40:57 PM ******/
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
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_featureTypeId] FOREIGN KEY([featureTypeId])
REFERENCES [dbo].[Feature_Type] ([featureTypeId])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_featureTypeId]
GO
