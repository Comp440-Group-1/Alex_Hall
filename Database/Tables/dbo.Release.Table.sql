USE [s16guest41]
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/5/2016 4:40:57 PM ******/
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
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_productId]
GO
