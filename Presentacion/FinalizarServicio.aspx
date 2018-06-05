<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FinalizarServicio.aspx.cs" Inherits="Presentacion.FinalizarServicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table>
            <thead>
                <td colspan="2">Finalización de servicio</td>
            </thead>
            <tr>
                <td>Id Servicio</td>
                <td><asp:Label ID="lblIdSer" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Fecha del servicio</td>
                <td><asp:Label ID="lblFechaSer" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Id del cliente(Corregir)</td>
                <td><asp:Label ID="lblIdUsuario" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Mascota a pasear:</td>
                <td><asp:Label ID="lblMascota" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Comentario anterior 
                    <br />al servicio:</td>
                <td><asp:Label ID="lblDetalles" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Id Paseador</td>
                <td><asp:Label ID="lblIdPaseador" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Hora de inicio:</td>
                <td><asp:Label ID="lblHoraIni" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Hora de finalización</td>
                <td><asp:Label ID="lblHoraFin" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td colspan="2">Comentario del paseador
                <br /><asp:Label ID="lblComentarioPaseador" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td colspan="2">¿Deseas agregar algún comentario?
                <br /><asp:TextBox ID="txtComentarioCliente" runat="server" Width="90%"></asp:TextBox></td>
            </tr>
            <tr>
                <td >Calificación</td>
                <td><asp:DropDownList ID="ddlCalificacion" runat="server">
                    <asp:ListItem>Seleccionar</asp:ListItem>
                    <asp:ListItem Value="1">1 - Pésimo servicio</asp:ListItem>
                    <asp:ListItem Value="2">2 - Mal servicio</asp:ListItem>
                    <asp:ListItem Value="3">3 - Servicio regular</asp:ListItem>
                    <asp:ListItem Value="4">4 - Buen servicio</asp:ListItem>
                    <asp:ListItem Value="5">5 - Excelente servicio</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnFinalizar" CssClass="Boton1" runat="server" Text="Finalizar" OnClick="btnFinalizar_Click"></asp:Button></td>
                <td><asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"></asp:Button></td>
            </tr>
        </table>
    </center>
</asp:Content>
