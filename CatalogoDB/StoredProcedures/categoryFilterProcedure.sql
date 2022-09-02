USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[categoryFilter]    Script Date: 01/09/2022 22:09:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[categoryFilter]
@search varchar(50)
AS
BEGIN
	IF @search = ''
	SELECT Id, Name, Description, IsActive, Created
	FROM Category
	ELSE
	SELECT Id, Name, Description, IsActive, Created
	FROM Category	
	WHERE Name LIKE '%'+@search+'%'
	OR Description LIKE '%'+@search+'%'
	OR Created LIKE '%'+@search+'%'	 
END
GO

