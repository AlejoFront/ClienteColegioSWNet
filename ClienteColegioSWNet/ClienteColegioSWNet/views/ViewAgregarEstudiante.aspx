<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAgregarEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewAgregarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar Estudiante | Colegio</title>
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

    <h2 class="title">Agregar Estudiante</h2>
    <div class="cont-forms">
        <form id="form1"  runat="server">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="apellido">Apellidos:</label>
                <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control" placeholder="Apellidos"></asp:TextBox>
                
            </div>
            <div class="form-group">
                <label for="fechaNacimiento">Fecha Nacimiento:</label>
                
                <input id="txtdate" type="date" class="form-control" runat="server"/>
            </div>



            <div class="form-group">
                <label for="identificacion">Documento Identificacion:</label>
                <asp:TextBox ID="txtidentificacion" runat="server" CssClass="form-control" placeholder="Documento Identificacion"></asp:TextBox>
                
            </div>

            <div class="form-group">
                <label for="genero">Genero:</label>
                 <select class="form-control" id="txtgenero" runat="server">
                    <option>Seleccione su Genero</option>
                    <option value="0">Hombre</option>
                    <option value="1">Mujer</option>
                  </select>
            </div>

            <div class="form-group">
                <label for="eps">Eps:</label>
                <asp:TextBox ID="txteps" runat="server" CssClass="form-control" placeholder="Eps"></asp:TextBox>
                
            </div>

            <div class="form-group">
                <label for="tel">Telefono:</label>
                <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" placeholder="Telefono"></asp:TextBox>
            </div>


            <div class="form-group">
                <label for="dir">Direccion:</label>
                <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" placeholder="Direccion"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Agregar" class="btn btn-primary" OnClick="Button1_Click" />
        </form>
        <br />
        <br />
    </div>
    <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
</body>
</html>
