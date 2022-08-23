USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[categoryListSearch]    Script Date: 23/08/2022 17:34:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[categoryListSearch]
@search varchar(100)
AS
BEGIN
	IF @search = ''
	SELECT C.Id, C.Name, C.Description
	FROM Category as C	
	ELSE
	SELECT C.Id, C.Name, C.Description
	FROM Category as C	
	WHERE C.Name LIKE '%'+@search+'%'
	OR C.Description LIKE '%'+@search+'%'	
END

GO

