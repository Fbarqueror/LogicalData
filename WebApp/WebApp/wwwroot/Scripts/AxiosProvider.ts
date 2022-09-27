
namespace App.AxiosProvider   {

   
    
    export const ProductoEliminar = (id) => ServiceApi.delete<DBEntity>("api/Producto/" + id).then(({ data }) => data);
    export const ProductoGuardar = (entity) => ServiceApi.post<DBEntity>("api/Producto", entity).then(({ data }) => data);
    export const ProductoActualizar = (entity) => ServiceApi.put<DBEntity>("api/Producto", entity).then(({ data }) => data);

    export const FacturaGuardar = (entity) => ServiceApi.post<DBEntity>("api/Factura", entity).then(({ data }) => data);
    export const FacturaEliminar = (id) => ServiceApi.delete<DBEntity>("api/Factura/" + id).then(({ data }) => data);
    export const FacturaActualizar = (entity) => ServiceApi.put<DBEntity>("api/Factura", entity).then(({ data }) => data);

    export const UsuarioRegistrar = (entity) => ServiceApi.post<DBEntity>("api/Usuarios/Registrar", entity).then(({ data }) => data);
    export const UsuarioLogin = (entity) => axios.post<DBEntity>("Login", entity).then(({ data }) => data);


}




