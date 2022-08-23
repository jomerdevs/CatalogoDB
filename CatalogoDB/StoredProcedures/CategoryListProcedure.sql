USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[CategoryList]    Script Date: 23/08/2022 17:33:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CategoryList]
AS
BEGIN
	SELECT * FROM Category
END
GO

