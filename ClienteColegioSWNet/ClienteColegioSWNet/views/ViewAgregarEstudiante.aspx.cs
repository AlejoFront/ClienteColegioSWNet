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
            String nombre = txtnombre.Text;
            String apellido = txtapellido.Text;
            DateTime fech = Convert.ToDateTime(txtdate.Value);
            int genero = Convert.ToInt32(txtgenero.Value);
            String eps = txteps.Text;
            String tel = txttelefono.Text;
            String dir = txtdireccion.Text;
            string email = txtemail.Text;
            
           

        }
    }
}