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
                        <asp:DropDownList ID="ddlHoraInicio" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem Value="100">1:00am</asp:ListItem>
                            <asp:ListItem Value="200">2:00am</asp:ListItem>
                            <asp:ListItem Value="300">3:00am</asp:ListItem>
                            <asp:ListItem Value="400">4:00am</asp:ListItem>
                            <asp:ListItem Value="500">5:00am</asp:ListItem>
                            <asp:ListItem Value="600">6:00am</asp:ListItem>
                            <asp:ListItem Value="700">7:00am</asp:ListItem>
                            <asp:ListItem Value="800">8:00am</asp:ListItem>
                            <asp:ListItem Value="900">9:00am</asp:ListItem>
                            <asp:ListItem Value="1000">10:00am</asp:ListItem>
                            <asp:ListItem Value="1100">11:00am</asp:ListItem>
                            <asp:ListItem Value="1200">12:00pm</asp:ListItem>
                            <asp:ListItem Value="1300">1:00pm</asp:ListItem>
                            <asp:ListItem Value="1400">2:00pm</asp:ListItem>
                            <asp:ListItem Value="1500">3:00pm</asp:ListItem>
                            <asp:ListItem Value="1600">4:00pm</asp:ListItem>
                            <asp:ListItem Value="1700">5:00pm</asp:ListItem>
                            <asp:ListItem Value="1800">6:00pm</asp:ListItem>
                            <asp:ListItem Value="1900">7:00pm</asp:ListItem>
                            <asp:ListItem Value="2000">8:00pm</asp:ListItem>
                            <asp:ListItem Value="2100">9:00am</asp:ListItem>
                            <asp:ListItem Value="2200">10:00pm</asp:ListItem>
                            <asp:ListItem Value="2300">11:00pm</asp:ListItem>
                            <asp:ListItem Value="2400">12:00am</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Hasta
                        <br />
                        <asp:DropDownList ID="ddlHoraFin" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem Value="100">1:00am</asp:ListItem>
                            <asp:ListItem Value="200">2:00am</asp:ListItem>
                            <asp:ListItem Value="300">3:00am</asp:ListItem>
                            <asp:ListItem Value="400">4:00am</asp:ListItem>
                            <asp:ListItem Value="500">5:00am</asp:ListItem>
                            <asp:ListItem Value="600">6:00am</asp:ListItem>
                            <asp:ListItem Value="700">7:00am</asp:ListItem>
                            <asp:ListItem Value="800">8:00am</asp:ListItem>
                            <asp:ListItem Value="900">9:00am</asp:ListItem>
                            <asp:ListItem Value="1000">10:00am</asp:ListItem>
                            <asp:ListItem Value="1100">11:00am</asp:ListItem>
                            <asp:ListItem Value="1200">12:00pm</asp:ListItem>
                            <asp:ListItem Value="1300">1:00pm</asp:ListItem>
                            <asp:ListItem Value="1400">2:00pm</asp:ListItem>
                            <asp:ListItem Value="1500">3:00pm</asp:ListItem>
                            <asp:ListItem Value="1600">4:00pm</asp:ListItem>
                            <asp:ListItem Value="1700">5:00pm</asp:ListItem>
                            <asp:ListItem Value="1800">6:00pm</asp:ListItem>
                            <asp:ListItem Value="1900">7:00pm</asp:ListItem>
                            <asp:ListItem Value="2000">8:00pm</asp:ListItem>
                            <asp:ListItem Value="2100">9:00am</asp:ListItem>
                            <asp:ListItem Value="2200">10:00pm</asp:ListItem>
                            <asp:ListItem Value="2300">11:00pm</asp:ListItem>
                            <asp:ListItem Value="2400">12:00am</asp:ListItem>
                        </asp:DropDownList>
                        <br />
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
                    <td>Precio del servicio:</td>
                    <td>
                        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Hoja de vida:</td>
                    <td>
                        
                        <asp:Button ID="btnSubirHojaVida" runat="server" Text="Examinar" />
                        
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