using ClienteColegioSWNet.model;
using ClienteColegioSWNet.ServicioMateriaSW;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewAgregarMatricula : System.Web.UI.Page
    {


        private static ServicioMateriaSW.materia[] materias;
        private static ServicioEstudianteSW.estudiante estudiante;
        private static ServicioMatriculaSW.matricula mtr;

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            String documento = "";
            DataTable dt = new System.Data.DataTable();
            DataRow dr;
            try
            {

                
                documento = txtDocumento.Text;
                
                estudiante = model.ServicioLocalEstudiante.getInstance().buscarEstudiante(documento);

                if (estudiante != null)
                {

                    dt.Columns.Add(new DataColumn("Nombre(s)"));
                    dt.Columns.Add(new DataColumn("Apellidos"));
                    dt.Columns.Add(new DataColumn("Email"));

                    dr = dt.NewRow();
                    dr["Nombre(s)"] = estudiante.nombres;
                    dr["Apellidos"] = estudiante.apellidos;
                    dr["Email"] = estudiante.correo;
                    dt.Rows.Add(dr);


                    lblerror.Visible = false;
                    grillaestudiante.Visible = true;
                    btnbuscarcurso.Enabled = true;
                }
                else
                {

                    lblerror.Text = "No se ha encontrado el estudiante";
                    lblerror.Visible = true;
                    grillaestudiante.Visible = false;
                }
                
                grillaestudiante.DataSource = dt;
                grillaestudiante.DataBind();
            }
            catch (System.Exception ex)
            {

            }


            
        }

        protected void btnbuscarcurso_Click(object sender, EventArgs e)
        {

            
            DataTable dt = new System.Data.DataTable();
            DataRow dr;


            try
            {
                int grado = Convert.ToInt32(txtgrado.Value);

                dt.Columns.Add(new DataColumn("Codigo"));
                dt.Columns.Add(new DataColumn("Nombre"));
                dt.Columns.Add(new DataColumn("Intensidad H."));

                materias = model.ServicioLocalMateria.getinstance().darMateriasPorGrado(grado);

                if (Convert.ToInt32(txtgrado.Value) == 0)
                {
                    lblerrmtr.Text = "Primero debes seleccionar el grado ha matricular .";
                    lblerrmtr.Visible = true;
                }
                else
                {
                    lblerrmtr.Visible = false;
                    btnMatricular.Enabled = true;
                    for (int i = 0; i < materias.Length; i++)
                    {
                        dr = dt.NewRow();

                        dr["Codigo"] = materias[i].codigo;
                        dr["Nombre"] = materias[i].nombre;
                        dr["Intensidad H."] = materias[i].intensidadHoraria;



                       dt.Rows.Add(dr);
                    }
                }

            }
            catch(System.Exception exp)
            {

            }
            grillamaterias.DataSource = dt;
            grillamaterias.DataBind();

            btnMatricular.Visible = true;
        }

        protected void btnMatricular_Click(object sender, EventArgs e)
        {

            try
            {
                DateTime today = DateTime.Today;
                DateTime fchinicio = Convert.ToDateTime(txtFechaInicio.Value);
                DateTime fchfinal = Convert.ToDateTime(txtFechaFinal.Value);

                if (fchinicio < today)
                {
                    lblerrmtr.Text = "¡No puedes poner una fecha de inicio antes que hoy!";
                    lblerrmtr.Visible = true;
                }else if (fchfinal <= fchinicio)
                {
                    lblerrmtr.Text = "¡No puedes poner una fecha final antes que la fecha de inicio!";
                    lblerrmtr.Visible = true;
                }else
                {
                    lblerrmtr.Visible = false;

                    for (int i = 0;i < materias.Length; i++)
                    {
                        mtr = new ServicioMatriculaSW.matricula();
                        mtr.codigo = 0;
                        mtr.pkEstudiante = estudiante.documentoIdentificacion;
                        mtr.pkMateria = materias[i].codigo;
                        mtr.fechaInscripcion = today;
                        mtr.fechaInscripcionSpecified = true;
                        mtr.fechaInicio = fchinicio;
                        mtr.fechaInicioSpecified = true;
                        mtr.fechaFinal = fchfinal;
                        mtr.fechaFinalSpecified = true;
                        mtr.estado = 1;
                        mtr.notaDefinitiva = 0.0;

                        ServicioLocalMatricula.getInstance().matricularEstudiante(mtr);
                    }

                    lblsussmtr.Visible = true;
                    lblsussmtr.Text = "Se ha matriculado el estudiante: " + estudiante.nombres + " " + estudiante.apellidos;



                }
            }
            catch(System.Exception exp)
            {
                
            }
        }
    }
}