USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[updateUser]    Script Date: 24/08/2022 21:09:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateUser]
@id int,
@firstName varchar(50),
@lastName varchar(50),
@email varchar(100),
@phone varchar(20),
@password varchar(500),
@isAdmin bit
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN		
			BEGIN
				UPDATE Users
				SET FirstName=@firstName, LastName=@lastName, Email=@email, Phone=@phone, Password=@password, IsAdmin=@isAdmin
				WHERE Id=@id
			END
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
END
GO

