USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[Register]    Script Date: 25/08/2022 17:15:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Register]
@firstName varchar(50),
@lastName varchar(50),
@email varchar(100),
@phone varchar(20),
@password varchar(500),
@registered bit output,
@message varchar(100) output
AS
BEGIN
	IF(NOT EXISTS(SELECT * FROM Users WHERE Email = @email AND Password = @password))
	BEGIN
		
		INSERT INTO Users(FirstName, LastName, Email, Phone, Password)
		VALUES(@firstName, @lastName, @email, @phone, @password)
		SET @registered = 1
		SET @message = 'User has been registered'
	END
	ELSE
	BEGIN
		SET @registered = 0
		SET @message = 'The email or phone already exist'
	END
END
GO

