<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioPaseador.aspx.cs" Inherits="Presentacion.FormularioPaseador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paseador</title>
    <link href="css/Estilos1.css" rel="stylesheet" />
</head>
<body>
    <form id="FormPaseador" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="2" class="thPaseador">Formulario paseador</th>
                </tr>
                <tr>
                    <td>Disponibilidad: </td>
                    <td>
                        <asp:TextBox ID="txtDisponibilidad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Experiencia: </td>
                    <td>
                        <asp:TextBox ID="txtExperiencia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Especialidad: </td>
                    <td>
                        <asp:TextBox ID="txtEspecialidad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>precio del servicio:</td>
                    <td>
                        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Button ID="btnCrearP" CssClass="Boton1" runat="server" Text="Crear" OnClick="btnCrearP_Click" />
&nbsp;<asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                         </center>
                    </td>
                </tr>

            </table>
            
        </center>    
    </div>
    </form>
</body>
</html>