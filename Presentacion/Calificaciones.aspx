<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calificaciones.aspx.cs" Inherits="Presentacion.Calificaciones" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <center>
         <div class="table-responsivexd">
         <table class="table table-borderedxd">

                 <tr>
                     <td><asp:GridView ID="GvServicio" runat="server" AutoGenerateColumns="False" CssClass="mGrid" OnRowCreated="GvCreado" style="margin-left: 0px" AllowPaging="true" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7">
        <Columns>
            <asp:BoundField DataField="Idservicio" HeaderText="ID" />
            <asp:BoundField DataField="fecha_se" HeaderText="Fecha de servicio" />
            <asp:BoundField DataField="ComentarioCliente" HeaderText="Comentario del cliente" />
            <asp:BoundField DataField="Calificacion" HeaderText="Calificación del servicio" />
        </Columns>
    </asp:GridView></td>
                 </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button1" CssClass="btn btn-danger btn-sm" runat="server" Text="Volver" OnClick="Volver"></asp:Button>
                 </td>
             </tr>
         </center>
        </table>
        </div>

    <asp:Label ID="Prueba" runat="server" Text=""></asp:Label>
</asp:Content>
