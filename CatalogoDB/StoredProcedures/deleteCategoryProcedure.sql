USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[deleteCategory]    Script Date: 24/08/2022 20:47:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteCategory]
@id int,
@RETURNMESSAGE varchar(50) output
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			DELETE FROM Category
			WHERE Id = @id

			SET @RETURNMESSAGE = 'Category deleted successfully!'
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SET @RETURNMESSAGE = ERROR_MESSAGE()
END CATCH
END
GO

