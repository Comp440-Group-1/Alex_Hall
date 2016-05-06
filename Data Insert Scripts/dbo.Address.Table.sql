USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([addressId], [address], [city], [zipCode], [stateCode], [country]) VALUES (1, N'123 Privet Street', N'Los Angeles', 91601, N'CA', N'United States of America')
INSERT [dbo].[Address] ([addressId], [address], [city], [zipCode], [stateCode], [country]) VALUES (2, N'348 Jinx Road ', N'London', NULL, NULL, N'England')
SET IDENTITY_INSERT [dbo].[Address] OFF
