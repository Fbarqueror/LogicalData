"use strict";
var App;
(function (App) {
    var AxiosProvider;
    (function (AxiosProvider) {
        AxiosProvider.ProductoEliminar = function (id) { return ServiceApi.delete("api/Producto/" + id).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.ProductoGuardar = function (entity) { return ServiceApi.post("api/Producto", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.ProductoActualizar = function (entity) { return ServiceApi.put("api/Producto", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.FacturaGuardar = function (entity) { return ServiceApi.post("api/Factura", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.FacturaEliminar = function (id) { return ServiceApi.delete("api/Factura/" + id).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.FacturaActualizar = function (entity) { return ServiceApi.put("api/Factura", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.UsuarioRegistrar = function (entity) { return ServiceApi.post("api/Usuarios/Registrar", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
        AxiosProvider.UsuarioLogin = function (entity) { return axios.post("Login", entity).then(function (_a) {
            var data = _a.data;
            return data;
        }); };
    })(AxiosProvider = App.AxiosProvider || (App.AxiosProvider = {}));
})(App || (App = {}));
//# sourceMappingURL=AxiosProvider.js.map