USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Release] ON 

INSERT [dbo].[Release] ([releaseId], [productId], [releaseDate], [releaseTypeId], [releaseNum]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), 1, N'1.1')
INSERT [dbo].[Release] ([releaseId], [productId], [releaseDate], [releaseTypeId], [releaseNum]) VALUES (2, 1, CAST(N'2000-05-01' AS Date), 2, N'2.1')
INSERT [dbo].[Release] ([releaseId], [productId], [releaseDate], [releaseTypeId], [releaseNum]) VALUES (3, 1, CAST(N'2000-06-13' AS Date), 3, N'2.2')
SET IDENTITY_INSERT [dbo].[Release] OFF
