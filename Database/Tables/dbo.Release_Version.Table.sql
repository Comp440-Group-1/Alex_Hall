USE [s16guest41]
GO
/****** Object:  Table [dbo].[Release_Version]    Script Date: 5/5/2016 4:40:57 PM ******/
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
