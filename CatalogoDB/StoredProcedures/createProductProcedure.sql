USE [Catalogo]
GO

/****** Object:  StoredProcedure [dbo].[createProduct]    Script Date: 23/08/2022 17:35:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createProduct]
@refCode varchar(50),
@productName varchar(50),
@model varchar(50),
@price numeric(8,2),
@brand varchar(50),
@categoryId int
AS
BEGIN
DECLARE @RowCount int = 0

SET @RowCount = (SELECT COUNT(1) FROM Product WHERE RefCode = @refCode OR Model = @model)
	BEGIN TRY
		BEGIN TRAN
		IF(@RowCount = 0)
			BEGIN
				INSERT INTO Product(RefCode, Name, Model, Price, Brand, CategoryId)
				VALUES(@refCode, @productName, @model, @price, @brand, @categoryId)
			END
		COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
END
GO

