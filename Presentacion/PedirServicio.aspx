<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PedirServicio.aspx.cs" Inherits="Presentacion.PedirServicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="4" class="thPaseador">Elaboración de servicio</th>
                </tr>
                <tr>
                    <td>Localidad: </td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidad" runat="server" style="margin-left: 0px" >
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem Value="1">Usaquén</asp:ListItem>
                            <asp:ListItem Value="2">Chapinero</asp:ListItem>
                            <asp:ListItem Value="3">Santa fe</asp:ListItem>
                            <asp:ListItem Value="4">San Cristobal</asp:ListItem>
                            <asp:ListItem Value="5">Usme</asp:ListItem>
                            <asp:ListItem Value="6">Tunjuelito</asp:ListItem>
                            <asp:ListItem Value="7">Bosa</asp:ListItem>
                            <asp:ListItem Value="8">Kennedy</asp:ListItem>
                            <asp:ListItem Value="9">Fontibon</asp:ListItem>
                            <asp:ListItem Value="10">Engativá</asp:ListItem>
                            <asp:ListItem Value="11">Suba</asp:ListItem>
                            <asp:ListItem Value="12">Barrio Unidos</asp:ListItem>
                            <asp:ListItem Value="13">Teusaquillo</asp:ListItem>
                            <asp:ListItem Value="14">Los Mártires</asp:ListItem>
                            <asp:ListItem Value="15">Antonio Nariño</asp:ListItem>
                            <asp:ListItem Value="16">Puente Aranda</asp:ListItem>
                            <asp:ListItem Value="17">La Candelaria</asp:ListItem>
                            <asp:ListItem Value="18">Rafael Uribe</asp:ListItem>
                            <asp:ListItem Value="19">Ciudad Bolivar</asp:ListItem>
                            <asp:ListItem Value="20">Sumapaz</asp:ListItem>
                            <asp:ListItem Value="*">Cualquiera</asp:ListItem>
                        </asp:DropDownList>
                       
                    </td>
                    <td>Hora de inicio: </td>
                    <td>
                        
                        <asp:DropDownList ID="ddlHora" runat="server">
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
                    </td>
                </tr>
                
                <tr>
                    <td colspan="4">
                        <center>
                        <asp:Button ID="btnBuscarS" CssClass="Boton1" runat="server" Text="Buscar" OnClick="btnCrearP_Click" />
&nbsp;<br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                         </center>
                    </td>
                </tr>

            </table>
            
        </center>    
    </div>

    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

</asp:Content>
