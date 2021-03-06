USE [s16guest41]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_Download_requests_per_month]    Script Date: 5/5/2016 4:42:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex Hall
-- Create date: 
-- Description:	Returns the number of request downloaded
--			per month for each version of each product.
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_Download_requests_per_month]
	
AS
BEGIN TRY
	SET NOCOUNT ON;
	SELECT 
		DISTINCT Product.name as Product,
		Release.ReleaseNum as [Version], 
	    DATEPART(Month,Download.downloadDateTime) as Month, 
		count(*) as Count
	from Download
	INNER JOIN Release on Download.releaseId = Release.releaseid
	INNER JOIN Release_Version on Release.releaseId = Release_Version.releaseId
	INNER JOIN Version on Release_Version.versionId = Version.versionId
	INNER JOIN Product on Version.productId = Product.productId
	GROUP BY Download.downloadId,Product.name,Release.releaseNum,Download.downloadDateTime
	ORDER BY Product,Version,[Month],[Count]
END TRY
BEGIN CATCH
	RAISERROR('Error executing stored procedure sp_get_Download_requests_per_month',10,1);
	PRINT ERROR_MESSAGE()
END CATCH


GO
