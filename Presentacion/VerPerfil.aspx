<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VerPerfil.aspx.cs" Inherits="Presentacion.VerPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Hola</h3> 
    <table>
        
         <tr>
              <asp:Image ID="Image1" runat="server" />
        </tr>
        <tr>
            <td>  <asp:Label ID="LblNom" runat="server" Text="Nombre"></asp:Label>  </td>
            <td> <asp:TextBox ID="Txtnom" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="LblApe" runat="server" Text="Apellido"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtApe" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="LblCorreo" runat="server" Text="Correo"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtCorreo" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="LblDo" runat="server" Text="Numero de documento"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtDo" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="Lbllocalidad" runat="server" Text="Localidad"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtLocalidad" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="LblTelefono" runat="server" Text="Telefono"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtTelefono" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="Lblrol" runat="server" Text="Rol"></asp:Label>  </td>
            <td> <asp:TextBox ID="TextBox6" runat="server" > </asp:TextBox> </td>     
        </tr>
        
         <tr>
            <td>  <asp:Label ID="Label8" runat="server" Text="Nombre"></asp:Label>  </td>
            <td> <asp:TextBox ID="TextBox8" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
            <td>  <asp:Label ID="Label9" runat="server" Text="Nombre"></asp:Label>  </td>
            <td> <asp:TextBox ID="TextBox9" runat="server" > </asp:TextBox> </td>     
        </tr>

    </table>
    

</asp:Content>
