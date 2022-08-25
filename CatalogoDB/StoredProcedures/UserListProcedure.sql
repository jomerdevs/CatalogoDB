USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[UsersList]    Script Date: 24/08/2022 21:09:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UsersList]
AS
BEGIN
	SELECT Id, FirstName, LastName, Email, Phone, IsAdmin
	FROM Users	
END
GO

