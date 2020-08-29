<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewListarEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewListarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Estudiantes | Colegio</title>
    <link rel="stylesheet" href="../assets/bootstrap.min.css"/>
     <link rel="stylesheet" href="../assets/styles.css"/>
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
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Estudiantes
      </a>
      <div class="dropdown-menu">
          <a class="dropdown-item" href="ViewAgregarEstudiante.aspx">Agregar Estudiante</a>
          <a class="dropdown-item" href="ViewBuscarEstudiante.aspx">Buscar Estudiantes</a>
          <a class="dropdown-item" href="ViewActualizarEstudiante.aspx">Actualizar Estudiantes</a>
          <a class="dropdown-item" href="ViewBorrarEstudiante.aspx">Eliminar Estudiantes</a>
      </div>
    </li>

          <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Matriculas
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

    <h1 class="title">Listado de estudiantes</h1>

    <form id="form1"  runat="server">

        <div class="cnt">
            <asp:Button ID="Button1" runat="server" Text="Mostrar Estudiantes" class="btn btn-primary" OnClick="Button1_Click1" />
        </div>

        <div class="cont-tb-list">
            <asp:GridView ID="grilla" runat="server" CssClass="table table-dark table-striped">

            </asp:GridView>
        </div>

    </form>


    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>

</body>