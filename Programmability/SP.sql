USE [s16guest41]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_into_Download]    Script Date: 5/5/2016 1:15:19 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_new_feature_count]    Script Date: 5/5/2016 1:15:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Hall
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_new_feature_count] @releaseNum varchar(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @featureCount int;
	select @featureCount = count(*) from Version_Feature where versionId in
	 (
		select versionId from Release_Version where releaseId = 
		(
			select releaseId from Release where releaseNum = @releaseNum
			and not releaseTypeId = 3
		 ) 
	 )
  if @featureCount >= 1
	PRINT CONVERT(varchar(32),@featureCount) + ' features are in the ' + @releaseNum + ' release'
  else
	PRINT 'It is a bug–fix release. There are no new features'
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_version]    Script Date: 5/5/2016 1:15:19 AM ******/
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
