﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewActualizarMatriculaEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewActualizarMatriculaEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Actualizar Matricula  | Colegio</title>
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

    <h2 class="title">Actualizar matricula  estudiante</h2>
    <form id="form1" runat="server">
        <div class="cont-search-form">
            <label for="search">Codigo del estudiante:</label>
            <div class="grp-srh">
                <asp:TextBox ID="txtDocumento" runat="server" class="form-control"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-success" OnClick="btnBuscar_Click" />
            </div>
        </div>

        <hr />
        <h4 class="title">Datos Estudiante</h4>
        <div class="cont-center col-7 estudiante">
            <asp:Label ID="lblerror" runat="server" Text="" Visible="False" CssClass="cnt-alertt alert alert-danger"></asp:Label>
        </div>
        <div class="cont-tb-list">
            <asp:GridView ID="grillaestudiante" runat="server" CssClass="table table-dark table-striped"></asp:GridView>
        </div>
        <hr />

        <div class="select-forms form-group">
            <label for="genero">Filtrar por grado:</label>
            <select class="form-control" id="txtgrado" runat="server">
                <option value="0">Seleccione el Grado</option>
                <option value="12">Todos</option>
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

        <div class="cont-alerts">
            <asp:Label ID="lblerrmtr" runat="server" CssClass="ct-alr alert cnt-alertt alert-danger" Visible="False"></asp:Label>
            <asp:Label ID="lblsussmtr" runat="server" CssClass="ct-alr alert alert-success" Visible="False"></asp:Label>
        </div>

        <div class="cnt">
            <asp:Button ID="btnbuscarcurso" runat="server" Text="buscar" CssClass="btn btn-primary" Enabled="False" OnClick="btnbuscarcurso_Click" />
        </div>
        <br />
        <div class="cont-datoss">
            <div class="grilla-mat">
                <asp:GridView ID="grillamaterias" runat="server" CssClass="table table-dark table-striped">
                </asp:GridView>
            </div>
            <div class="datos-mat">
                <div class="grp-srh">
                    <asp:TextBox ID="txtcodmatricula" runat="server" CssClass="form-control" placeholder="Digite el Cod. del registro matricula"></asp:TextBox>
                    <asp:Button ID="btnbuscarmatricula" runat="server" Text="Buscar" class="btn btn-success" OnClick="btnbuscarmatricula_Click" />
                </div>
                <div class="form-group">
                    <label for="materia">Materia:</label>
                    <asp:TextBox ID="txtmateria" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="materia">Nota:</label>
                    <asp:TextBox ID="txtnota" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="estado">Estado:</label>
                    <select class="form-control" id="txtestado" runat="server">
                        <option value="12">Seleccione el estado</option>
                        <option value="0">Matriculada</option>
                        <option value="1">Cursando</option>
                        <option value="2">Reprobada</option>
                        <option value="3">Aprobada</option>
                    </select>
                </div>

                <div class="cnt">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn btn-success" OnClick="btnActualizar_Click" />
                </div>
            </div>
        </div>
    </form>






    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
</body>
</html>
