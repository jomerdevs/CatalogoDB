USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[createCategory]    Script Date: 23/08/2022 17:35:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createCategory]
@categoryName varchar(50),
@description varchar(100)
AS
BEGIN
DECLARE @RowCount int = 0

SET @RowCount = (SELECT COUNT(1) FROM Category WHERE Name = @categoryName OR Description = @description)
	BEGIN TRY
		BEGIN TRAN
		IF(@RowCount = 0)
			BEGIN
				INSERT INTO Category(Name, Description)
				VALUES(@categoryName, @description)
			END
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
END
GO

