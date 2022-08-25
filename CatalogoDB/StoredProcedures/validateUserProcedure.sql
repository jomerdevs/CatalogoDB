USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[validateUser]    Script Date: 24/08/2022 21:10:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[validateUser]
@email varchar(100),
@password varchar(500)
AS
BEGIN
	IF(EXISTS(SELECT * FROM Users WHERE Email = @email AND Password = @password))
		SELECT Id, IsAdmin FROM Users WHERE Email = @email AND Password = @password
	ELSE
		SELECT '0'
END
GO

