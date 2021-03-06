USE [s16guest41]
GO
/****** Object:  Table [dbo].[Release_Platform]    Script Date: 5/5/2016 4:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release_Platform](
	[releaseId] [int] NOT NULL,
	[platformTypeId] [int] NOT NULL,
	[downloadLink] [varchar](128) NOT NULL DEFAULT ('www.fakelink.xyz'),
 CONSTRAINT [PK_Release_Platform_releaseId_platformTypeId] PRIMARY KEY CLUSTERED 
(
	[releaseId] ASC,
	[platformTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
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
