<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBuscarEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewBuscarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Buscar Estudiante  | Colegio</title>
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
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Estudiantes
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ViewAgregarEstudiante.aspx">Agregar Estudiante</a>
                    <a class="dropdown-item" href="ViewListarEstudiante.aspx">Listar Estudiantes</a>
                    <a class="dropdown-item" href="ViewBuscarEstudiante.aspx">Buscar Estudiantes</a>
                    <a class="dropdown-item" href="#">Eliminar Estudiantes</a>
                </div>
            </li>

            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Matriculas
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Agregar Matricula</a>
                    <a class="dropdown-item" href="#">Listar Matriculas</a>
                    <a class="dropdown-item" href="#">Buscar Matricula</a>
                    <a class="dropdown-item" href="#">Eliminar Matricula</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" onclick="acercaDe()">Acerca de ....</a>
            </li>


        </ul>
    </nav>

    <h1 class="title">Buscar Estudiante</h1>
    <form id="form1" runat="server">


        <div class="cont-search">
            <label for="search">Nombre del estudiante:</label>
            <div class="grp-srh">
                <input type="text" class="form-control" id="shearch" />
                <asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-success"/>
            </div>
        </div>


        <div class="cont-tb-list">
            <asp:Table ID="grilla" runat="server" CssClass="table table-dark table-striped">
                <asp:TableRow>
                    <asp:TableCell>Nombre(s)</asp:TableCell>
                    <asp:TableCell>Apellidos</asp:TableCell>
                    <asp:TableCell>Fecha Nacimiento</asp:TableCell>
                    <asp:TableCell>Documeto  Identificacion</asp:TableCell>
                    <asp:TableCell>Genero</asp:TableCell>
                    <asp:TableCell>Eps</asp:TableCell>
                    <asp:TableCell>Direccion</asp:TableCell>
                    <asp:TableCell>Email</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

    </form>




    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
</body>
</html>
