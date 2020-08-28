using ClienteColegioSWNet.ServicioEstudianteSW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteColegioSWNet.model
{
    public class ServicioLocalEstudiante
    {

        private static ServicioEstudianteSW.ServicioEstudianteSWClient servicio = new ServicioEstudianteSW.ServicioEstudianteSWClient();
        public static ServicioEstudianteSWClient getInstance()
        {
            return servicio;
        }
    }
}