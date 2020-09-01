<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewActualizarEstudiante.aspx.cs" Inherits="ClienteColegioSWNet.views.ViewActualizar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Actualizar Estudiante  | Colegio</title>
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
    <h1 class="title">Buscar / Actualizar Estudiante</h1>
    <form id="form1" runat="server">
        <div class="cont-search-form">
            <label for="search">Documento del estudiante:</label>
            <div class="grp-srh">
                <asp:TextBox ID="txtdoc" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-success" OnClick="btnBuscar_Click" />
            </div>
        </div>
        <div class="cont-alerts ">
            <asp:Label ID="Label1" runat="server" CssClass="mt-5 ct-alr alert cnt-alertt alert-danger" Visible="False"></asp:Label>
            <asp:Label ID="lblsuss" runat="server" CssClass="mt-5 ct-alr alert alert-success" Visible="False"></asp:Label>
            <asp:Label ID="lblupdate" runat="server" CssClass="mt-5 ct-alr alert alert-success" Text="Se ha Actualizado el Estudiante" Visible="False"></asp:Label>
            <asp:Label ID="lblerr" runat="server" CssClass="mt-5 ct-alr alert cnt-alertt alert-danger" Text="No se ha Actualizado  el Estudiante" Visible="False"></asp:Label>
        </div>
        <hr />

               
        <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="cont-forms">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="apellido">Apellidos:</label>
                <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control" placeholder="Apellidos" ></asp:TextBox>

            </div>
            <div class="form-group">
                <label for="fechaNacimiento">Fecha Nacimiento:</label>

                <input id="txtdate" type="date" class="form-control" runat="server" />
            </div>



            <div class="form-group">
                <label for="identificacion">Documento Identificacion:</label>
                <asp:TextBox ID="txtidentificacion" runat="server" CssClass="form-control" placeholder="Documento Identificacion" Enabled="False"></asp:TextBox>

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
                <asp:TextBox ID="txteps" runat="server" CssClass="form-control" placeholder="Eps" ></asp:TextBox>

            </div>

            <div class="form-group">
                <label for="tel">Telefono:</label>
                <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" placeholder="Telefono" ></asp:TextBox>
            </div>


            <div class="form-group">
                <label for="dir">Direccion:</label>
                <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" placeholder="Direccion" ></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email" ></asp:TextBox>
            </div>


        </div>
        </asp:Panel>
        <div class="cnt">
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn btn-primary" Visible="False" OnClick="btnActualizar_Click" />
            <asp:Button ID="btncancelar" runat="server" Text="cancelar" CssClass="btn btn-danger" Visible="False" OnClick="btncancelar_Click" />
        </div>


    </form>
    <br />
    <br />


     <script src="../assets/jquery-3.2.1.slim.min.js"></script>
    <script src="../assets/popper.min.js"></script>
    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/JavaScript.js"></script>
    <script>
        var recargar = function () {
            location.reload();
        }
    </script>
    </body>
</html>
