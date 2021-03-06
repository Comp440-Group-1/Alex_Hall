USE [s16guest41]
GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/5/2016 4:40:57 PM ******/
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
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_productId]
GO
