using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace WebApp
{
    public class ServiceApi
    {
        private readonly HttpClient client;

        public ServiceApi(HttpClient client)
        {
            this.client = client;
        }


        public async Task<IEnumerable<ProductoEntity>> ProductoGet()
        {

            var result = await client.ServicioGetAsync<IEnumerable<ProductoEntity>>("api/Producto");
            return result;

        }


        public async Task<ProductoEntity> ProductoGetById(int id)
        {
            var result = await client.ServicioGetAsync<ProductoEntity>("api/Producto/" + id);

            if (result.CodeError is not 0) throw new Exception(result.MsgError);

            return result;

        }

      
        public async Task<IEnumerable<FacturaEntity>> FacturaGet()
        {

            var result = await client.ServicioGetAsync<IEnumerable<FacturaEntity>>("api/Factura");
            return result;

        }


        public async Task<FacturaEntity> FacturaGetById(int id)
        {
            var result = await client.ServicioGetAsync<FacturaEntity>("api/Factura/" + id);

            if (result.CodeError is not 0) throw new Exception(result.MsgError);

            return result;

        }



        #region Usuario

        public async Task<UsuariosEntity> UsuarioLogin(UsuariosEntity entity)
        {

            var result = await client.ServicioPostAsync<UsuariosEntity>("api/Usuarios/Login", entity);

            return result;
        }

        #endregion
    }
}
