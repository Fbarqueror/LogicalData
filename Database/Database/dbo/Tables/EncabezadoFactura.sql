CREATE TABLE [dbo].[EncabezadoFactura](
    [IdFactura] [int] NOT NULL,
    [Cliente] [varchar](50) NOT NULL,
    [total] [numeric](18, 0) NOT NULL,
    [FechaRegistro] [datetime] NOT NULL,
    [UsuarioRegistro] [varchar](50) NOT NULL,
CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED
(
    [IdFactura] ASC
))