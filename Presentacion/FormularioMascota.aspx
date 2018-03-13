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
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem>Alaskan Malamute</asp:ListItem>
                            <asp:ListItem>Beagle</asp:ListItem>
                            <asp:ListItem>Boxer</asp:ListItem>
                            <asp:ListItem>Bulldog</asp:ListItem>
                            <asp:ListItem>Chihuahua</asp:ListItem>
                            <asp:ListItem>Chow Chow</asp:ListItem>
                            <asp:ListItem Value="Cocker Ingles">Cocker Inglés</asp:ListItem>
                            <asp:ListItem Value="Dalmata">Dálmata</asp:ListItem>
                            <asp:ListItem>Doberman</asp:ListItem>
                            <asp:ListItem>Husky Siberiano</asp:ListItem>
                            <asp:ListItem Value="Gran Danes">Gran Danés</asp:ListItem>
                            <asp:ListItem>Golden Retriever</asp:ListItem>
                            <asp:ListItem>Labrador Retriever</asp:ListItem>
                            <asp:ListItem Value="Pastor Aleman">Pastor Alemán</asp:ListItem>
                            <asp:ListItem>Pit Bull</asp:ListItem>
                            <asp:ListItem>Rottweiler</asp:ListItem>
                            <asp:ListItem>San Bernardo</asp:ListItem>
                            <asp:ListItem>Samoyedo</asp:ListItem>
                            <asp:ListItem>Schnauzer</asp:ListItem>
                            <asp:ListItem>Yorkshire Terrier</asp:ListItem>
                        </asp:DropDownList>
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