USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Release_Type] ON 

INSERT [dbo].[Release_Type] ([releaseTypeId], [releaseAType]) VALUES (1, N'new product')
INSERT [dbo].[Release_Type] ([releaseTypeId], [releaseAType]) VALUES (2, N'new features')
INSERT [dbo].[Release_Type] ([releaseTypeId], [releaseAType]) VALUES (3, N'bug-fix')
SET IDENTITY_INSERT [dbo].[Release_Type] OFF
