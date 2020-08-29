using ClienteColegioSWNet.ServicioExtraSW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteColegioSWNet.model
{
    public class ServicioLocalExtra
    {

        private static ServicioExtraSW.ServiciosExtraSWClient servicio = new ServicioExtraSW.ServiciosExtraSWClient();
        public static ServiciosExtraSWClient getInstance()
        {
            return servicio;
        }

    }
}