USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[deleteUser]    Script Date: 24/08/2022 20:47:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteUser]
@id int,
@RETURNMESSAGE varchar(50) output
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			DELETE FROM Users
			WHERE Id = @id

			SET @RETURNMESSAGE = 'User deleted successfully!'
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SET @RETURNMESSAGE = ERROR_MESSAGE()
END CATCH
END
GO

