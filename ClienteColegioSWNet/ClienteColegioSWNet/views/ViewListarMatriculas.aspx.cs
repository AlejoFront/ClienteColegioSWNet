using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteColegioSWNet.views
{
    public partial class ViewListarMatriculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {

            ServicioMatriculaSW.matricula[] matriculas;

            DataTable dt = new System.Data.DataTable();
            DataRow dr;


            try
            {
                dt.Columns.Add(new DataColumn("Codigo Matricula"));
                dt.Columns.Add(new DataColumn("Cod Estudiante"));
                dt.Columns.Add(new DataColumn("Materia"));
                dt.Columns.Add(new DataColumn("Definitiva"));
                dt.Columns.Add(new DataColumn("Fecha de inscripcion"));
                dt.Columns.Add(new DataColumn("Fecha inicio"));
                dt.Columns.Add(new DataColumn("Fecha Final"));
                dt.Columns.Add(new DataColumn("Estado"));


                matriculas = model.ServicioLocalMatricula.getInstance().darMatriculas();

                for (int i = 0; i < matriculas.Length; i++)
                {
                    dr = dt.NewRow();
                    dr["Codigo Matricula"] = matriculas[i].codigo;
                    dr["Cod Estudiante"] = matriculas[i].pkEstudiante;
                    dr["Materia"] = matriculas[i].pkMateria;
                    dr["Definitiva"] = matriculas[i].notaDefinitiva;
                    dr["Fecha de inscripcion"] = matriculas[i].fechaInscripcion;
                    dr["Fecha inicio"] = matriculas[i].fechaInicio;
                    dr["Fecha Final"] = matriculas[i].fechaFinal;
                    if (matriculas[i].estado == 1)
                    {
                        dr["Estado"] = "Cursando";
                    }else if (matriculas[i].estado == 2)
                    {
                        dr["Estado"] = "Reprobada";
                    }
                    
                    

                    dt.Rows.Add(dr);
                }
            }
            catch (Exception ex)
            {

            }





            grilla.DataSource = dt;
            grilla.DataBind();

        }
    }
}