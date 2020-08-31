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

            model.ServicioLocalExtra.getInstance().darCantidadMateriasPorGradoCursando();

            dt.Rows.Add(new Object[] { "Grado1", 11 });
            dt.Rows.Add(new Object[] { "Grado2", 7 });
            dt.Rows.Add(new Object[] { "Grado3", 11 });
            dt.Rows.Add(new Object[] { "Grado4", 8 });
            dt.Rows.Add(new Object[] { "Grado5", 10 });
            dt.Rows.Add(new Object[] { "Grado6", 4 });
            dt.Rows.Add(new Object[] { "Grado7", 3 });
            dt.Rows.Add(new Object[] { "Grado8", 12 });
            dt.Rows.Add(new Object[] { "Grado9", 4 });
            dt.Rows.Add(new Object[] { "Grado10", 7 });
            dt.Rows.Add(new Object[] { "Grado11", 8 });

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