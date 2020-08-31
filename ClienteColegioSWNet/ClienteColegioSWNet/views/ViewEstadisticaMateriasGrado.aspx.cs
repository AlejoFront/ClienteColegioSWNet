using ClienteColegioSWNet.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewEstadisticaMateriasGrado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected string getDatos()
        {

            

            DataTable dt = new System.Data.DataTable();


            dt.Columns.Add(new DataColumn("Grado"));
            dt.Columns.Add(new DataColumn("Cantidad_Materias"));

            int?[] arg  = model.ServicioLocalExtra.getInstance().darCantidadMateriasPorGradoCursando();

            for (int i = 0; i< arg.Length; i++)
            {
                String grado = "Grado "+ (i+1);
                dt.Rows.Add(new Object[] { grado, arg[i] });
            }


            string strdatos;
            strdatos = "[['Grado','catidad de materias por grado'],";

            foreach (DataRow dr in dt.Rows)
            {
                strdatos = strdatos + "[";
                strdatos = strdatos + "'" + dr[0] + "'" + "," + dr[1];
                strdatos = strdatos + "],";
            }

            strdatos = strdatos + "]";

            return strdatos;
        }
    }
}