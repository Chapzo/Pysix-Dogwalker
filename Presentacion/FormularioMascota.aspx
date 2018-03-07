<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioMascota.aspx.cs" Inherits="Presentacion.FormularioMascota" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mascota</title>
    <link href="css/Estilos1.css" rel="stylesheet" />
</head>
<body>
    <form id="FormPaseador" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="2" class="thMascota">Formulario mascota</th>
                </tr>
                <tr>
                    <td>Tamaño: </td>
                    <td>
                        <asp:TextBox ID="txtTamaño" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Edad: </td>
                    <td>
                        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Raza: </td>
                    <td>
                        <asp:TextBox ID="txtRaza" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Nombre: </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Button ID="btnCrearM" CssClass="Boton1" runat="server" Text="Crear" OnClick="btnCrearM_Click" />
                        <asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
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