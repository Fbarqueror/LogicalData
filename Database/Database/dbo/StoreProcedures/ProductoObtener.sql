CREATE PROCEDURE [dbo].[ProductoObtener]
      @IdProducto int= NULL
AS BEGIN
  SET NOCOUNT ON



 SELECT
     IdProducto,
     Nombre,
     Precio,
     IVA,
     case when IVA = 1 then Precio * 0.13 else 0 end Impuesto,
     case when IVA = 1 then Precio * 0.13 + Precio else Precio end Total,
     FechaRegistro,
     UsuarioRegistro
   
    FROM dbo.Producto
    WHERE
    (@IdProducto IS NULL OR IdProducto=@IdProducto)



END