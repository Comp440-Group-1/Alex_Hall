USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([companyId], [name], [addressId]) VALUES (1, N'ABC records', 1)
INSERT [dbo].[Company] ([companyId], [name], [addressId]) VALUES (2, N'ZYX Corp', 2)
INSERT [dbo].[Company] ([companyId], [name], [addressId]) VALUES (3, N'99 Store', NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
