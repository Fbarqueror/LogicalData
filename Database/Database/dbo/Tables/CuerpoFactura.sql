CREATE TABLE [dbo].[CuerpoFactura](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [IdFactura] [int] NOT NULL,
    [IdProducto] [int] NOT NULL,
    [Precio] [decimal](18, 0) NOT NULL,
    [IVA] [decimal](18, 0) NOT NULL,
    [Cantidad] [int] NOT NULL,
    [TotalUnitario] [numeric](18, 0) NOT NULL,
CONSTRAINT [PK_CuerpoFactura] PRIMARY KEY CLUSTERED
(
    [Id] ASC
)
)