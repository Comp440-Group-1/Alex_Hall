USE [s16guest41]
GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/5/2016 4:40:57 PM ******/
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
