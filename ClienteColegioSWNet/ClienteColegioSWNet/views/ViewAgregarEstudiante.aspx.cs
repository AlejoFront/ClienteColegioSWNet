using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewAgregarEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ServicioEstudianteSW.ServicioEstudianteSWClient servicio;
            ServicioEstudianteSW.estudiante est;

            servicio = new ServicioEstudianteSW.ServicioEstudianteSWClient();
            est = new ServicioEstudianteSW.estudiante();

            String nombre = txtnombre.Text;
            String apellido = txtapellido.Text;
            DateTime fech = Convert.ToDateTime(txtdate.Value);
            String doc = txtidentificacion.Text;
            int genero = Convert.ToInt32(txtgenero.Value);
            String eps = txteps.Text;
            String tel = txttelefono.Text;
            String dir = txtdireccion.Text;
            string email = txtemail.Text;

            est.nombres = nombre;
            est.apellidos = apellido;
            est.fechaNacimiento = fech;
            est.fechaNacimientoSpecified = true;
            est.documentoIdentificacion = doc;
            est.genero = genero;
            est.eps = eps;
            est.telefono = tel;
            est.direccion = dir;
            est.correo = email;


            try
            {
                servicio.insertarEstudiante(est);

                txtnombre.Text = "";
                txtapellido.Text = "";
                txtdate.Value = "";
                txtidentificacion.Text = "";
                txtgenero.Value = "";
                txteps.Text = "";
                txttelefono.Text = "";
                txtdireccion.Text = "";
                txtemail.Text = "";


                string script = "alert(\"Estudiante Agregado Exitosamente!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            catch (Exception ex)
            {

            }


        }
    }
}