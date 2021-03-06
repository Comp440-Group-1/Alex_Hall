USE [s16guest41]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_version]    Script Date: 5/5/2016 4:42:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Hall
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_version] 
	@productId smallint, 
	@newVersion varchar(16) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Version] VALUES(@productId,@newVersion, GETDATE());

END

GO
