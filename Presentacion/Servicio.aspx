<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Servicio.aspx.cs" Inherits="Presentacion.Servicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Servicio</h1>
    <br />
    <br />
    <br />
    <center>
        <table>
            <thead>
                <td colspan="2" class="thPaseador">
                <center>Elaboración de servicio</center>
                </td>
            </thead>
            <tr>
                <td>Id del paseador:</td>
                <td><asp:Label ID="lblIdPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Nombre del paseador:</td>
                <td>
                    <asp:Label ID="lblNombrePa" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApellidoPa" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Zona del paseador:</td>
                <td><asp:Label ID="lblZonaPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Servicio a prestar:</td>
                <td><asp:Label ID="lblServicioPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Tiempo de servicio:</td>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Por favor pon hora de inicio" ControlToValidate="ddlHoraInicio" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Por favor pon hora de finalización" ControlToValidate="ddlHoraFin" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Id del cliente:</td>
                <td><asp:Label ID="lblIdCl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Nombre del cliente:</td>
                <td>
                    <asp:Label ID="lblNombreCl" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApellidoCl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Mascota a pasear:</td>
                <td><asp:DropDownList ID="ddlMascota" runat="server" OnSelectedIndexChanged="ddlMascota_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Costo total:</td>
                <td>$<asp:Label ID="lblPrecio" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2"><center>¿Quieres agregar algun comentario o sugerencia <br /> para el paseador?<br />
                    <br /><asp:TextBox ID="txtDetalles" runat="server"></asp:TextBox></center>
                    </td>
                
            </tr>
            <tr>
                <td><asp:Button ID="btnEnviar" CssClass="Boton1" runat="server" Text="Enviar solicitud" OnClick="btnEnviar_Click"></asp:Button></td>
                <td><asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"></asp:Button></td>
            </tr>
            


        </table>
    </center>



</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #txtDetalles {
            width: 90%;
            height: 50px;
        }
    </style>
</asp:Content>

