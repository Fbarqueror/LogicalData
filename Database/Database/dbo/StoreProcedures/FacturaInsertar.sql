CREATE PROCEDURE [dbo].[FacturaInsertar]
    @Cliente varchar(50),
    @UsuarioRegistro varchar(50),
    @Detalle Detalle READONLY
AS



BEGIN
SET NOCOUNT ON



declare @idFactura int;



SELECT @idFactura = IsNull(max([IdFactura]),1) + 1 FROM [Ventas].[dbo].[EncabezadoFactura];



 BEGIN TRANSACTION TRASA



   BEGIN TRY
    
    -- Inserta encabezado
    INSERT INTO [EncabezadoFactura]
    (
      [IdFactura],
      [Cliente],
      [Total],
      [FechaRegistro],
      [UsuarioRegistro]
    )
    VALUES
    (
      @idFactura,
      @Cliente,
      0,
      GETDATE(),
      @UsuarioRegistro
    );



   --Inserta detalle
    insert into [CuerpoFactura]
    (
      [IdFactura]
     ,[IdProducto]
     ,[Precio]
     ,[IVA]
     ,[Cantidad]
     ,[TotalUnitario]
    )
     select
       @idFactura,
       b.IdProducto,
       b.Precio,
       case when b.IVA = 1 then b.Precio * 0.13 else 0 end,
       a.cantidad,
       case when b.IVA = 1 then (b.Precio * 0.13) * a.cantidad else b.Precio * a.cantidad end
      from
        @Detalle a inner join Producto b
          on a.IdProducto = b.IdProducto;



   update [EncabezadoFactura]
    set [Total] = (select SUM([TotalUnitario]) from [CuerpoFactura] where [IdFactura] = @idFactura);



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