<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBorrarEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewBorrarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Eliminar Estudiantes | Colegio</title>
    <link rel="stylesheet" href="../assets/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/styles.css" />
</head>
<body>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <!-- Brand -->
        <a class="navbar-brand" href="#">Colegio</a>

        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="ViewPrincipal.aspx">Principal</a>
            </li>
            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Estudiantes
                </a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="ViewAgregarEstudiante.aspx">Agregar Estudiante</a>
                  <a class="dropdown-item" href="ViewListarEstudiante.aspx">Listar Estudiantes</a>
                  <a class="dropdown-item" href="ViewBuscarEstudiante.aspx">Buscar Estudiantes</a>
                  <a class="dropdown-item" href="ViewActualizarEstudiante.aspx">Actualizar Estudiantes</a>
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

    <h1 class="title">Buscar y Eliminar estudiantes</h1>

    <form id="form1" runat="server">

        <div class="cont-search-form">
            <label for="search">Documento del estudiante:</label>
            <div class="grp-srh">
                <asp:TextBox ID="txtdocumento" runat="server" class="form-control"></asp:TextBox>

                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-success" OnClick="btnBuscar_Click" />
            </div>
        </div>

        <div class="cont-tb-list">
            <asp:GridView ID="grilla" runat="server" CssClass="table table-dark table-striped">
            </asp:GridView>
        </div>
        <div class="cnt">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" Visible="False" />
        </div>
        <div class="cnt-alert alert-success">
            <asp:Label ID="lbldelete" runat="server" Text="Se ha eliminado Correctamente" Visible="False"></asp:Label>
        </div>
        <div class="cnt-alert alert-danger">
            <asp:Label ID="lblerr" runat="server" Text="No se ha eliminado el Estudiante" Visible="False"></asp:Label>
        </div>


    </form>


    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>

</body>
