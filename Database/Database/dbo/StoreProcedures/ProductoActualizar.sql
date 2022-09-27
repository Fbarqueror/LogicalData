CREATE PROCEDURE [dbo].[ProductoActualizar]
    @IdProducto int,
	@Nombre varchar(50),
	@Precio decimal, 
	@IVA bit,
	@FechaRegistro date,
	@UsuarioRegistro varchar(50)


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE dbo.Producto SET
	
	 Nombre=@Nombre,
	 Precio=@Precio,
	 IVA=@IVA,
	 FechaRegistro=@FechaRegistro,
	 UsuarioRegistro=@UsuarioRegistro
	WHERE 
	       IdProducto=@IdProducto
	
	  COMMIT TRANSACTION TRASA
	  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

	   SELECT 
			 ERROR_NUMBER() AS CodeError,
			 ERROR_MESSAGE() AS MsgError
   
	   ROLLBACK TRANSACTION TRASA

   END CATCH

 END