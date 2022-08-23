USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[ProductList]    Script Date: 23/08/2022 17:36:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProductList]
AS
BEGIN
	SELECT P.Id, P.RefCode, P.Name, P.Model, P.Price, P.Brand, P.CategoryId, C.Name as Category
	FROM Product as P
	LEFT JOIN Category as C on P.CategoryId = C.Id
END

GO

