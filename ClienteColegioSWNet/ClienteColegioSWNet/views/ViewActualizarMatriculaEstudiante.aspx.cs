using ClienteColegioSWNet.model;
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
    public partial class ViewActualizarMatriculaEstudiante : System.Web.UI.Page
    {
        private static ServicioMateriaSW.materia materias;
        private static ServicioEstudianteSW.estudiante estudiante;
        private static ServicioMatriculaSW.matricula[] mtr;
        private static ServicioMatriculaSW.matricula matriculaactualizar;
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


                dt.Columns.Add(new DataColumn("Codigo"));
                dt.Columns.Add(new DataColumn("Materia"));
                dt.Columns.Add(new DataColumn("Nota"));
                dt.Columns.Add(new DataColumn("Fecha Inscripcion"));
                dt.Columns.Add(new DataColumn("Fecha Inicio"));
                dt.Columns.Add(new DataColumn("Fecha FInal"));
                dt.Columns.Add(new DataColumn("Estado"));

                int grado = Convert.ToInt32(txtgrado.Value);



                if (Convert.ToInt32(txtgrado.Value) == 0)
                {
                    lblerrmtr.Text = "Primero debes seleccionar el grado  o todos los grados.";
                    lblerrmtr.Visible = true;
                }
                else
                {
                    if (grado != 12)
                    {

                        mtr = model.ServicioLocalMatricula.getInstance().darMatriculasEstudianteGrado(estudiante.documentoIdentificacion, grado);
                    }
                    else
                    {
                        mtr = model.ServicioLocalMatricula.getInstance().darMatriculasEstudiante(estudiante.documentoIdentificacion);
                    }

                    lblerrmtr.Visible = false;

                    if (mtr != null)
                    {
                        for (int i = 0; i < mtr.Length; i++)
                        {
                            dr = dt.NewRow();

                            dr["Codigo"] = mtr[i].codigo;
                            dr["Materia"] = ServicioLocalMateria.getinstance().darMateriaPorCodigo(mtr[i].pkMateria).nombre;
                            dr["Nota"] = mtr[i].notaDefinitiva;
                            dr["Fecha Inscripcion"] = mtr[i].fechaInscripcion;
                            dr["Fecha Inicio"] = mtr[i].fechaInicio;
                            dr["Fecha FInal"] = mtr[i].fechaFinal;
                            string estado = "";
                            if (mtr[i].estado == 0)
                            {
                                estado = "Matriculada";
                            }
                            else if (mtr[i].estado == 1)
                            {
                                estado = "Cursando";
                            }
                            else if (mtr[i].estado == 2)
                            {
                                estado = "Rerpobada";
                            }
                            else if (mtr[i].estado == 3)
                            {
                                estado = "Aprobada";
                            }
                            dr["Estado"] = estado;



                            dt.Rows.Add(dr);

                            //lblregistro.Visible = true;
                            //txtcodMateria.Visible = true;
                            //btbDelete.Visible = true;

                        }
                    }
                    else
                    {
                        lblerrmtr.Visible = true;
                        if (grado != 12)
                        {
                            lblerrmtr.Text = "No se ha encontrado la matricula de la/el Estudiante: " + estudiante.nombres + " " + estudiante.apellidos;
                        }
                        else
                        {
                            lblerrmtr.Text = "La/El Estudiante: " + estudiante.nombres + " " + estudiante.apellidos + " No esta Matriculado en <b>&nbsp;ningun Curso</b>";
                        }
                    }
                }

            }
            catch (System.Exception exp)
            {

            }
            grillamaterias.DataSource = dt;
            grillamaterias.DataBind();
        }

        protected void btnbuscarmatricula_Click(object sender, EventArgs e)
        {
            

            try
            {
                if (!txtcodmatricula.Text.Equals(""))
                {
                   int cod = Convert.ToInt32(txtcodmatricula.Text);
                    matriculaactualizar = model.ServicioLocalMatricula.getInstance().darMatriculaCodigo(cod);

                    txtmateria.Text = ServicioLocalMateria.getinstance().darMateriaPorCodigo(matriculaactualizar.pkMateria).nombre;
                    txtnota.Text = Convert.ToString(matriculaactualizar.notaDefinitiva);
                    txtestado.Value = Convert.ToString(matriculaactualizar.estado);
                }
                else
                {
                    
                }
            }
            catch(System.Exception exp)
            {

            }

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            try
            {
                int cod = Convert.ToInt32(txtcodmatricula.Text);
                double notdef = Convert.ToDouble(txtnota.Text);
                int state = Convert.ToInt32(txtestado.Value);


                matriculaactualizar.notaDefinitiva = notdef;
                matriculaactualizar.estado = state;

                ServicioLocalMatricula.getInstance().actualizarMatricula(matriculaactualizar);
            }
            catch(System.Exception exp)
            {

            }
        }
    }
}