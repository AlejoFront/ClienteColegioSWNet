<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPrincipal.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aplicacion SW Cliente  | Colegio</title>
    <link rel="stylesheet" href="../assets/bootstrap.min.css"/>
     <link rel="stylesheet" href="../assets/styles.css"/>
</head>
<body>

 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Colegio</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <!-- Dropdown -->
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

    <h1 class="title">Contador de regisros</h1>

    
        <form id="formdash"  runat="server">
            <div class="cont-dashboard">
                <div class="dasboard dasboard-student">
                    <asp:Label ID="Label1" runat="server" Text="Estudiantes registrados:" CssClass="lb lbt"></asp:Label>
                    <asp:Label ID="lblEst" runat="server" CssClass="lb"></asp:Label>
                </div>

                <div class="dasboard dasboard-Matricula">
                    <asp:Label ID="Label2" runat="server" Text="Matriculas registradas:" CssClass="lb lbt"></asp:Label>
                    <asp:Label ID="lblmatriculas" runat="server" CssClass="lb"></asp:Label>
                </div>

                <div class="dasboard dasboard-Colegio">
                    <asp:Label ID="Label3" runat="server" Text="Materias registradas:" CssClass="lb lbt"></asp:Label>
                    <asp:Label ID="lblmaterias" runat="server" CssClass="lb"></asp:Label>
                </div>
            </div>
        </form>
    


    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>

</body>
</html>
