using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            ServicioExtraSW.ServiciosExtraSWClient ext;

            ext = new ServicioExtraSW.ServiciosExtraSWClient();

            int cantMaterias = ext.cantidadMateriasRegistradas();

            int cantEst = ext.cantidadEstudiantesRegistrados();
            int cantMatri = ext.cantidadMatriculasRegistradas();


            lblEst.Text = Convert.ToString(cantEst);
            lblmaterias.Text = Convert.ToString(cantMaterias);
            lblmatriculas.Text = Convert.ToString(cantMatri);
        }
    }
}