USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[userFilter]    Script Date: 01/09/2022 22:09:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[userFilter]
@search varchar(50)
AS
BEGIN
	IF @search = ''
	SELECT Id, FirstName, LastName, Email, Phone, IsAdmin
	FROM Users
	ELSE
	SELECT Id, FirstName, LastName, Email, Phone, IsAdmin
	FROM Users	
	WHERE FirstName LIKE '%'+@search+'%'
	OR LastName LIKE '%'+@search+'%'
	OR Email LIKE '%'+@search+'%'
	OR Phone LIKE '%'+@search+'%'
END
GO

