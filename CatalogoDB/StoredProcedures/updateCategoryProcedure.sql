USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[updateCategory]    Script Date: 23/08/2022 17:37:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateCategory]
@id int,
@categoryName varchar(50),
@description varchar(50)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN			
				UPDATE Category
				SET Name=@categoryName, Description=@description
				WHERE Id=@id			
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
END
GO

