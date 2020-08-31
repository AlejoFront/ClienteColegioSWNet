<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEstadisticaMateriasGrado.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewEstadisticaMateriasGrado" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Grafica Materias por grado  | Colegio</title>
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
          <a class="dropdown-item" href="#">Ver Matriculas Estudiante</a>
          <a class="dropdown-item" href="#">Eliminar Matricula</a>
          <a class="dropdown-item" href="#">Estadisticas de Matricula</a>
      </div>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#" onclick="acercaDe()">Acerca de ....</a>
    </li>


  </ul>
</nav>
    <form id="form1" runat="server">
        <h1 class="title">grafica</h1>
        <div id="chart_div"></div>
    </form>






    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', { packages: ['corechart', 'bar'] });
        google.charts.setOnLoadCallback(drawBarColors);

        function drawBarColors() {
            var data = google.visualization.arrayToDataTable(<%=getDatos()%>);

    var options = {
        title: 'Cantidad de materias por Grado',
        chartArea: { width: '50%' },
        colors: ['#b0120a', '#ffab91'],
        hAxis: {
            title: 'Total materias',
            minValue: 0
        },
        vAxis: {
            title: 'Materias'
        }
    };
    var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}
    </script>
</body>
</html>
