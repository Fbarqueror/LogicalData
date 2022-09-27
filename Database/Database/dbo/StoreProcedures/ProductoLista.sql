CREATE PROCEDURE [dbo].[ProductoLista]
AS
	BEGIN
	SET NOCOUNT ON


	SELECT
	 IdProducto,
	 Nombre,
	 Precio,
	 IVA,
	 FechaRegistro,
	 UsuarioRegistro
	FROM dbo.Producto


	END
