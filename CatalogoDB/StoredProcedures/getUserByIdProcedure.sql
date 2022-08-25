USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[getUserById]    Script Date: 24/08/2022 21:08:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getUserById]
@id int
AS
BEGIN
	SELECT * FROM Users	
	where Id = @id
END
GO

