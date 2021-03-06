USE [s16guest41]
GO
/****** Object:  Table [dbo].[Version_Platform]    Script Date: 5/5/2016 4:40:57 PM ******/
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
