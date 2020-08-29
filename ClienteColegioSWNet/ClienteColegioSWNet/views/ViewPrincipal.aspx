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

    <h1 class="title">Contador de regisros</h1>

    <div class="cont-dashboard">
        <div class="dasboard dasboard-student">
            <h2>Estudiantes registrados: </h2>
        </div>

        <div class="dasboard dasboard-Matricula">
            <h2>Matriculas registradas: </h2>
        </div>

        <div class="dasboard dasboard-Colegio">
            <h2>Colegio registrado: </h2>
        </div>
    </div>


    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>

</body>
</html>
