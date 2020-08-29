using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewActualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            btnActualizar.Visible = true;
            btncancelar.Visible = true;
            txtdoc.Enabled = false;
            String doc = txtdoc.Text;

            ServicioEstudianteSW.estudiante estudiantes;

            try
            {
                estudiantes = model.ServicioLocalEstudiante.getInstance().buscarEstudiante(doc);


                txtnombre.Text = estudiantes.nombres;
                txtapellido.Text = estudiantes.apellidos;
                txtdate.Value = Convert.ToString(estudiantes.fechaNacimiento.ToString("yyyy-MM-dd"));
                txtidentificacion.Text = estudiantes.documentoIdentificacion;
                txtgenero.Value = Convert.ToString(estudiantes.genero);
                txteps.Text = estudiantes.eps;
                txttelefono.Text = estudiantes.telefono;
                txtdireccion.Text = estudiantes.direccion;
                txtemail.Text = estudiantes.correo;


            }
            catch (Exception ex)
            {

            }
        }




        protected void btncancelar_Click(object sender, EventArgs e)
        {

            Response.Redirect("ViewActualizarEstudiante.aspx");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            ServicioEstudianteSW.estudiante est;


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
                bool response = model.ServicioLocalEstudiante.getInstance().actualizarEstudiante(est.documentoIdentificacion, est);


                txtnombre.Text = "";
                txtapellido.Text = "";
                txtdate.Value = "";
                txtidentificacion.Text = "";
                txtgenero.Value = "";
                txteps.Text = "";
                txttelefono.Text = "";
                txtdireccion.Text = "";
                txtemail.Text = "";
                txtdoc.Text = "";
                txtdoc.Enabled = true;


                if (!response)
                {
                    lblerr.Visible = true;
                    lblupdate.Visible = false;
                }
                else
                {
                    lblupdate.Visible = true;
                    lblerr.Visible = false;
                    Panel1.Visible = false;
                    btnActualizar.Visible = false;
                    btncancelar.Visible = false;
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}