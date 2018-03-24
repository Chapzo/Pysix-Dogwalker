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
                        <asp:DropDownList ID="ddlTamaño" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem>Grande</asp:ListItem>
                            <asp:ListItem>Mediano</asp:ListItem>
                            <asp:ListItem Value="Pequeno">Pequeño</asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:DropDownList ID="ddlRaza" runat="server">
                            <asp:ListItem Value="1">Seleccionar</asp:ListItem>
                            <asp:ListItem Value="2">Alaskan Malamute</asp:ListItem>
                            <asp:ListItem Value="3">Beagle</asp:ListItem>
                            <asp:ListItem Value="4">Boxer</asp:ListItem>
                            <asp:ListItem Value="5">Bulldog</asp:ListItem>
                            <asp:ListItem Value="6">Chihuahua</asp:ListItem>
                            <asp:ListItem Value="7">Chow Chow</asp:ListItem>
                            <asp:ListItem Value="8">Cocker Inglés</asp:ListItem>
                            <asp:ListItem Value="9">Dálmata</asp:ListItem>
                            <asp:ListItem Value="10">Doberman</asp:ListItem>
                            <asp:ListItem Value="11">Husky Siberiano</asp:ListItem>
                            <asp:ListItem Value="12">Gran Danés</asp:ListItem>
                            <asp:ListItem Value="13">Golden Retriever</asp:ListItem>
                            <asp:ListItem Value="14">Labrador Retriever</asp:ListItem>
                            <asp:ListItem Value="15">Pastor Alemán</asp:ListItem>
                            <asp:ListItem Value="16">Pit Bull</asp:ListItem>
                            <asp:ListItem Value="16">Rottweiler</asp:ListItem>
                            <asp:ListItem Value="17">San Bernardo</asp:ListItem>
                            <asp:ListItem Value="18">Samoyedo</asp:ListItem>
                            <asp:ListItem Value="19">Schnauzer</asp:ListItem>
                            <asp:ListItem Value="20">Yorkshire Terrier</asp:ListItem>
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