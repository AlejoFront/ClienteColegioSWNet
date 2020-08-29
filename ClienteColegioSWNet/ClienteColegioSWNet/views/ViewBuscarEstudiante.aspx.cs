using System;
using System.Collections.Generic;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewBuscarEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            ServicioEstudianteSW.estudiante[] estudiantes;

            DataTable dt = new System.Data.DataTable();
            DataRow dr;

            String nombre = txtnombre.Text;


            dt.Columns.Add(new DataColumn("Nombre(s)"));
            dt.Columns.Add(new DataColumn("Apellidos"));
            dt.Columns.Add(new DataColumn("Fecha Nacimiento"));
            dt.Columns.Add(new DataColumn("Documeto  Identificacion"));
            dt.Columns.Add(new DataColumn("Genero"));
            dt.Columns.Add(new DataColumn("Eps"));
            dt.Columns.Add(new DataColumn("Direccion"));
            dt.Columns.Add(new DataColumn("Email"));

            try
            {
                estudiantes = model.ServicioLocalEstudiante.getInstance().darEstudiantesPorNombre(nombre);


                for (int i = 0; i < estudiantes.Length; i++)
                {

                    dr = dt.NewRow();
                    dr["Nombre(s)"] = estudiantes[i].nombres;
                    dr["Apellidos"] = estudiantes[i].apellidos;
                    dr["Fecha Nacimiento"] = estudiantes[i].fechaNacimiento;
                    dr["Documeto  Identificacion"] = estudiantes[i].documentoIdentificacion;

                    dr["Genero"] = (estudiantes[i].genero == 1) ? "Mujer" : "Hombre";

                    dr["Eps"] = estudiantes[i].eps;
                    dr["Direccion"] = estudiantes[i].direccion;
                    dr["Email"] = estudiantes[i].correo;
                    dt.Rows.Add(dr);
                }

            }
            catch
            {

            }
            grilla.DataSource = dt;
            grilla.DataBind();
        }


    }
}