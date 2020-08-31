using ClienteColegioSWNet.ServicioMateriaSW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteColegioSWNet.model
{
    public class ServicioLocalMateria
    {

        private static ServicioMateriaSW.ServicioMateriaSWClient servicio = new ServicioMateriaSW.ServicioMateriaSWClient();

        public static ServicioMateriaSWClient getinstance()
        {
            return servicio;
        }

    }
}