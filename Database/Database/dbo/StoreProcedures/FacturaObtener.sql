CREATE PROCEDURE [dbo].[FacturaObtener]
      @IdFactura int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     IdFactura,
	 Cliente,
     UsuarioRegistro
     
    FROM EncabezadoFactura a
        
    WHERE
    (@IdFactura IS NULL OR IdFactura = @IdFactura)

END