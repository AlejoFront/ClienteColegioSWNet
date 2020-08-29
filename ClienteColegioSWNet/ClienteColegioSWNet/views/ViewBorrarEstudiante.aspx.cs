using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{

    public partial class ViewBorrarEstudiante : System.Web.UI.Page
    {
        private static ServicioEstudianteSW.estudiante estudiante;

        private static DataTable dt = new System.Data.DataTable();
        private static DataRow dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            

            String documento = txtdocumento.Text;




            try
            {
                estudiante = model.ServicioLocalEstudiante.getInstance().buscarEstudiante(documento);


                if(estudiante != null)
                {

                    dt.Columns.Add(new DataColumn("Nombre(s)"));
                    dt.Columns.Add(new DataColumn("Apellidos"));
                    dt.Columns.Add(new DataColumn("Fecha Nacimiento"));
                    dt.Columns.Add(new DataColumn("Documeto  Identificacion"));
                    dt.Columns.Add(new DataColumn("Genero"));
                    dt.Columns.Add(new DataColumn("Eps"));
                    dt.Columns.Add(new DataColumn("Direccion"));
                    dt.Columns.Add(new DataColumn("Email"));

                    dr = dt.NewRow();
                    dr["Nombre(s)"] = estudiante.nombres;
                    dr["Apellidos"] = estudiante.apellidos;
                    dr["Fecha Nacimiento"] = estudiante.fechaNacimiento;
                    dr["Documeto  Identificacion"] = estudiante.documentoIdentificacion;

                    dr["Genero"] = (estudiante.genero == 1) ? "Mujer" : "Hombre";

                    dr["Eps"] = estudiante.eps;
                    dr["Direccion"] = estudiante.direccion;
                    dr["Email"] = estudiante.correo;
                    dt.Rows.Add(dr);

                    btnEliminar.Visible = true;


                    lblerr.Visible = false;
                    lbldelete.Visible = false;
                }
                else
                {
                    lblerr.Visible = true;
                    lblerr.Text = "No se ha encontrado el estudiante";
                }



                

            }
            catch
            {

            }
            grilla.DataSource = dt;
            grilla.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {


            try
            {
                bool del = model.ServicioLocalEstudiante.getInstance().eliminarEstudiante(estudiante.documentoIdentificacion);


                if (!del)
                {
                    lblerr.Visible = true;
                    lblerr.Text = "No se ha Eliminado el estudiante";
                }
                else
                {
                    lbldelete.Visible = true;
                    grilla.DataSource = null;
                    grilla.DataBind();
                    btnEliminar.Visible = false;
                }


                
                
            }
            catch
            {

            }


        }
    }
}