USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Feature_Type] ON 

INSERT [dbo].[Feature_Type] ([featureTypeId], [featureType]) VALUES (1, N'new')
INSERT [dbo].[Feature_Type] ([featureTypeId], [featureType]) VALUES (2, N'deprecated')
SET IDENTITY_INSERT [dbo].[Feature_Type] OFF
