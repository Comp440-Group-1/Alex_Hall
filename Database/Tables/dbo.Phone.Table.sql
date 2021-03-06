USE [s16guest41]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/5/2016 4:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[phoneId] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](15) NOT NULL,
	[phoneTypeId] [tinyint] NOT NULL,
	[customerId] [int] NOT NULL,
 CONSTRAINT [PK_Phone_phoneId] PRIMARY KEY CLUSTERED 
(
	[phoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_customerId] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_customerId]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_phoneTypeId] FOREIGN KEY([phoneTypeId])
REFERENCES [dbo].[Phone_Type] ([phoneTypeId])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_phoneTypeId]
GO
