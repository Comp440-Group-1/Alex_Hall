USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Version] ON 

INSERT [dbo].[Version] ([versionId], [productId], [versionCode], [versionDate]) VALUES (1, 1, N'1.1', CAST(N'2000-01-01' AS Date))
INSERT [dbo].[Version] ([versionId], [productId], [versionCode], [versionDate]) VALUES (2, 1, N'1.2', CAST(N'2000-01-01' AS Date))
INSERT [dbo].[Version] ([versionId], [productId], [versionCode], [versionDate]) VALUES (3, 1, N'2.1', CAST(N'2000-05-01' AS Date))
INSERT [dbo].[Version] ([versionId], [productId], [versionCode], [versionDate]) VALUES (4, 1, N'2.2', CAST(N'2000-05-01' AS Date))
INSERT [dbo].[Version] ([versionId], [productId], [versionCode], [versionDate]) VALUES (5, 1, N'3,1', CAST(N'2016-05-04' AS Date))
SET IDENTITY_INSERT [dbo].[Version] OFF
