using ClienteColegioSWNet.ServicioMatriculaSW;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewPromedioEstudiante : System.Web.UI.Page
    {


        private static ServicioEstudianteSW.estudiante estudiante;

        private static DataTable dt = new System.Data.DataTable();
        private static DataRow dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String documento = txtdocumento.Text;


           try
            {
                estudiante = model.ServicioLocalEstudiante.getInstance().buscarEstudiante(documento);
                matricula matr = new matricula();

                matr.pkEstudiante = documento;
                
                double promedio = model.ServicioLocalMatricula.getInstance().darPromedioEstudiante(matr);

                if (estudiante != null)
                {

                    dt.Columns.Add(new DataColumn("Nombre(s)"));
                    dt.Columns.Add(new DataColumn("Apellidos"));
                    dt.Columns.Add(new DataColumn("Email"));
                    dt.Columns.Add(new DataColumn("Promedio"));

                    dr = dt.NewRow();
                    dr["Nombre(s)"] = estudiante.nombres;
                    dr["Apellidos"] = estudiante.apellidos;
                    dr["Email"] = estudiante.correo;
                    dr["Promedio"] = promedio;
                    dt.Rows.Add(dr);

                }

                }
            catch (System.Exception ex)
            {

            }
            grilla.DataSource = dt;
            grilla.DataBind();
        }
    }
    
}