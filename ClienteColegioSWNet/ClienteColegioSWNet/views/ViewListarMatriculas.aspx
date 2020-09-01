<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewListarMatriculas.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewListarMatriculas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Matriculas  | Colegio</title>
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
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Estudiantes
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
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Matriculas
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

    <h1 class="title">Lista de matriculas</h1>


    <form id="form1" runat="server">
        <div class="cnt">
            <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Matriculas" CssClass="btn btn-primary" OnClick="btnMostrar_Click"/>
        </div>
        <div class="cont-tb-list">
            <asp:GridView ID="grilla" runat="server" CssClass="table table-dark table-striped"></asp:GridView>
        </div>
    </form>






    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
</body>
</html>
