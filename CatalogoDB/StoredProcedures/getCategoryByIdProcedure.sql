USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[getCategoryById]    Script Date: 23/08/2022 17:36:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getCategoryById]
@id int
AS
BEGIN
	SELECT Id, Name, Description
	FROM Category	
	WHERE Id = @id
END
GO

