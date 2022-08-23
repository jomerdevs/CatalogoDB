USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[updateProduct]    Script Date: 23/08/2022 17:37:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateProduct]
@id int,
@refCode varchar(50),
@productName varchar(50),
@model varchar(50),
@price numeric(8,2),
@brand varchar(50),
@categoryId int
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN		
			BEGIN
				UPDATE Product
				SET RefCode=@refCode, Name=@productName, Model=@model, Price=@price, Brand=@brand, CategoryId=@categoryId
				WHERE Id=@id
			END
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
END
GO

