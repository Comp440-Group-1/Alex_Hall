USE [s16guest41]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerId], [fName], [lName], [email], [companyId]) VALUES (1, N'Peter', N'Smith', N'p.smith@abc.com', 1)
INSERT [dbo].[Customer] ([customerId], [fName], [lName], [email], [companyId]) VALUES (2, N'Maria', N'Bounte', N'maria@zyx.com', 2)
INSERT [dbo].[Customer] ([customerId], [fName], [lName], [email], [companyId]) VALUES (3, N'David', N'Sommerset', N'david.sommerset@99cents.store', 3)
INSERT [dbo].[Customer] ([customerId], [fName], [lName], [email], [companyId]) VALUES (4, N'Maria', N'Bounte', N'maria.bounte@99cents.store', 3)
SET IDENTITY_INSERT [dbo].[Customer] OFF
