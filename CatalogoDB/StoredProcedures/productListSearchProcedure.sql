USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[productListSearch]    Script Date: 23/08/2022 17:37:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[productListSearch]
@search varchar(50)
AS
BEGIN
	IF @search = ''
	SELECT P.Id, P.RefCode, P.Name, P.Model, P.Price, P.Brand, C.Name as Category
	FROM Product as P
	LEFT JOIN Category as C on P.CategoryId = C.Id
	ELSE
	SELECT P.Id, P.RefCode, P.Name, P.Model, P.Price, P.Brand, C.Name as Category
	FROM Product as P
	LEFT JOIN Category as C on P.CategoryId = C.Id
	WHERE P.RefCode LIKE '%'+@search+'%'
	OR P.Name LIKE '%'+@search+'%'
	OR P.Model LIKE '%'+@search+'%'
	OR P.Brand LIKE '%'+@search+'%'
	OR C.Name LIKE '%'+@search+'%' 
END


GO

