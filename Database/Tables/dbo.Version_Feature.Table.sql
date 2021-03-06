USE [s16guest41]
GO
/****** Object:  Table [dbo].[Version_Feature]    Script Date: 5/5/2016 4:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version_Feature](
	[versionId] [int] NOT NULL,
	[featureid] [int] NOT NULL,
 CONSTRAINT [PK_Version_Feature_versionId_featureId] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC,
	[featureid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_featureId] FOREIGN KEY([featureid])
REFERENCES [dbo].[Feature] ([featureId])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_featureId]
GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_versionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[Version] ([versionId])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_versionId]
GO
