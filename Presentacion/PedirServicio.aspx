<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PedirServicio.aspx.cs" Inherits="Presentacion.PedirServicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="2" class="thPaseador">Elaboración de servicio</th>
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

</asp:Content>
