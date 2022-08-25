USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[createUser]    Script Date: 24/08/2022 20:46:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createUser]
@firstName varchar(50),
@lastName varchar(50),
@email varchar(100),
@phone varchar(20),
@password varchar(500),
@isAdmin bit
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM Users WHERE Email = @email AND Password = @password))
	BEGIN

		INSERT INTO Users(FirstName, LastName, Email, Phone, Password, IsAdmin)
		VALUES(@firstName, @lastName, @email, @phone, @password, @isAdmin)		
	END
	ELSE
	BEGIN
		SELECT ERROR_MESSAGE();
	END
END
GO

