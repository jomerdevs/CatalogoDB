USE [Catalogo]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 23/08/2022 17:33:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefCode] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Price] [numeric](8, 2) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ProductUnique] UNIQUE NONCLUSTERED 
(
	[RefCode] ASC,
	[Name] ASC,
	[Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CK_Price_not_negative] CHECK  (([Price]>=(0)))
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CK_Price_not_negative]
GO

