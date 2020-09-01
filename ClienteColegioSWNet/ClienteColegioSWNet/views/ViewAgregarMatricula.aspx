<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAgregarMatricula.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewAgregarMatricula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar Matricula  | Colegio</title>
    <link rel="stylesheet" href="../assets/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/styles.css" />
</head>
<body>



    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <!-- Brand -->
        <a class="navbar-brand" href="#">Colegio</a>

        <!-- Links -->
        <ul class="navbar-nav">
            <!-- Dropdown -->
            <li class="nav-item">
                <a class="nav-link" href="ViewPrincipal.aspx">Principal</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Estudiantes
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ViewAgregarEstudiante.aspx">Agregar Estudiante</a>
                    <a class="dropdown-item" href="ViewListarEstudiante.aspx">Listar Estudiantes</a>
                    <a class="dropdown-item" href="ViewBuscarEstudiante.aspx">Buscar Estudiantes</a>
                    <a class="dropdown-item" href="ViewActualizarEstudiante.aspx">Actualizar Estudiantes</a>
                    <a class="dropdown-item" href="ViewBorrarEstudiante.aspx">Eliminar Estudiantes</a>
                    <a class="dropdown-item" href="ViewPromedioEstudiante.aspx">Promedio Estudiante</a>
                </div>
            </li>

            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Matriculas
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ViewAgregarMatricula.aspx">Matricular Estudiante</a>
                    <a class="dropdown-item" href="ViewListarMatriculas.aspx">Listar Matriculas</a>
                    <a class="dropdown-item" href="ViewListarMatriculaEstudiante.aspx">Ver Matriculas Estudiante</a>
                    <a class="dropdown-item" href="ViewActualizarMatriculaEstudiante.aspx">Actualizar Matriculas Estudiante</a>
                    <a class="dropdown-item" href="ViewBorrarMatriculaEstudiante.aspx">Eliminar Matricula</a>
                    <a class="dropdown-item" href="ViewEstadisticaMateriasGrado.aspx">Estadisticas de Matricula</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" onclick="acercaDe()">Acerca de ....</a>
            </li>


        </ul>
    </nav>


    <h2 class="title">Matricular Estudiante</h2>


    <div class="cont-forms">
        <form id="form1" runat="server" class="formulario">
            <div class="cont-search-form">
                <label for="search">Codigo del estudiante:</label>
                <div class="grp-srh">
                    <asp:TextBox ID="txtDocumento" runat="server" class="form-control"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-success" OnClick="btnBuscar_Click" />
                </div>
            </div>
            <hr />
            <div class="cont-datos">
                <div class="estudiante">
                    <h4 class="title">Datos Estudiante</h4>
                    <asp:Label ID="lblerror" runat="server" Text="" Visible="False" CssClass="cnt-alertt alert alert-danger"></asp:Label>
                    <asp:GridView ID="grillaestudiante" runat="server" CssClass="table table-dark table-striped"></asp:GridView>
                </div>
                <div class="matricula">
                    <h4 class="title">Materias Matricula</h4>

                    <div class="select-forms form-group">
                        <label for="genero">Grado:</label>
                        <select class="form-control" id="txtgrado" runat="server">
                            <option value="0">Seleccione su Grado</option>
                            <option value="1">Grado 1</option>
                            <option value="2">Grado 2</option>
                            <option value="3">Grado 3</option>
                            <option value="4">Grado 4</option>
                            <option value="5">Grado 5</option>
                            <option value="6">Grado 6</option>
                            <option value="7">Grado 7</option>
                            <option value="8">Grado 8</option>
                            <option value="9">Grado 9</option>
                            <option value="10">Grado 10</option>
                            <option value="11">Grado 11</option>

                        </select>
                    </div>
                    <div class="cnt">
                        <asp:Button ID="btnbuscarcurso" runat="server" Text="buscar" CssClass="btn btn-primary" OnClick="btnbuscarcurso_Click" Enabled="False" />
                    </div>
                    <hr />

                    <div class="cont-fechas">
                        <div class="form-group">
                            <label for="fechaInicio">Fecha Inicio:</label>
                            <input id="txtFechaInicio" type="date" class="fch form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="fechaFinal">Fecha Finalizacion:</label>
                            <input id="txtFechaFinal" type="date" class="fch form-control" runat="server" />
                        </div>

                    </div>
                    <div class="cont-alerts">
                        <asp:Label ID="lblerrmtr" runat="server" CssClass="ct-alr alert cnt-alertt alert-danger" Visible="False"></asp:Label>
                        <asp:Label ID="lblsussmtr" runat="server" CssClass="ct-alr alert alert-success" Visible="False"></asp:Label>
                    </div>
                    <hr />
                    <br />

                    <asp:GridView ID="grillamaterias" runat="server" CssClass="table table-dark table-striped"></asp:GridView>
                    <br />
                    <div class="cnt">
                        <asp:Button ID="btnMatricular" runat="server" Text="Matricular" CssClass="btn btn-success" OnClick="btnMatricular_Click" Enabled="False" />
                    </div>
                </div>
            </div>
        </form>
    </div>







    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
</body>
</html>
