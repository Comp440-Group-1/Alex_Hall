USE [s16guest41]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_into_Download]    Script Date: 5/5/2016 5:00:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Hall
-- Create date: 
-- Description:	Inserts a download record into 
--			the Download table
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_into_Download]
	@customerId int, 
	@releaseNum varchar(5),
	@platformTypeId int

AS
BEGIN TRY
	SET NOCOUNT ON;
	DECLARE @releaseId int;
	select @releaseId = releaseId from Release where releaseNum = @releaseNum;
	INSERT INTO DOWNLOAD VALUES(@customerId,@releaseId,@platformTypeId,GETDATE());;
END TRY
BEGIN CATCH
     PRINT 'ERROR: ' + ERROR_MESSAGE();
END CATCH


GO
