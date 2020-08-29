using ClienteColegioSWNet.ServicioMatriculaSW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteColegioSWNet.model
{
    public class ServicioLocalMatricula
    {
        private static ServicioMatriculaSW.ServicioMatriculaSWClient servicio = new ServicioMatriculaSW.ServicioMatriculaSWClient();
        public static ServicioMatriculaSWClient getInstance()
        {
            return servicio;
        }
    }
}