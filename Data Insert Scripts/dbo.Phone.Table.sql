USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Phone] ON 

INSERT [dbo].[Phone] ([phoneId], [number], [phoneTypeId], [customerId]) VALUES (5, N'123-485-8973', 1, 1)
INSERT [dbo].[Phone] ([phoneId], [number], [phoneTypeId], [customerId]) VALUES (6, N'1-28-397863896', 1, 2)
INSERT [dbo].[Phone] ([phoneId], [number], [phoneTypeId], [customerId]) VALUES (7, N'179-397-87968', 3, 3)
INSERT [dbo].[Phone] ([phoneId], [number], [phoneTypeId], [customerId]) VALUES (8, N'178-763-98764', 3, 4)
SET IDENTITY_INSERT [dbo].[Phone] OFF
