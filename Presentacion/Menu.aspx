<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Presentacion.Menu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><asp:Label ID="lblSaludo" runat="server"></asp:Label></h1>
    <br />
    <br />
    <table>
        <thead colspan="2">Tus datos</thead>
        <tr>
            <td>Nombre(s)</td>
            <td><asp:Label ID="lblNombre" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Apellido(s)</td>
            <td><asp:Label ID="lblApellido" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Correo</td>
            <td><asp:Label ID="lblCorreo" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Tipo de documento</td>
            <td><asp:Label ID="lblTipoDoc" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>No. de documento</td>
            <td><asp:Label ID="lblDocumento" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Localidad</td>
            <td><asp:Label ID="lblLocalidad" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Telefono</td>
            <td><asp:Label ID="lblTelefono" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Rol:</td>
            <td><asp:Label ID="lblRol" runat="server"></asp:Label></td>
        </tr>
    </table>
    <br />
    
    

    <asp:Label ID="lblFotoPerfil" runat="server"></asp:Label><br />
</asp:Content>
