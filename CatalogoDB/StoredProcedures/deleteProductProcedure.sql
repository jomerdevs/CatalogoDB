USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[deleteProduct]    Script Date: 23/08/2022 17:35:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteProduct]
@id int
AS
BEGIN
	DELETE FROM Product
	WHERE Id = @id
END
GO

