<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PerfilPaseador.aspx.cs" Inherits="Presentacion.PerfilPaseador" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <center><table class="TablaTitulos">
        <thead>
            <tr>
                <th>
                    <h1><asp:Label ID="lblNickPaseador" runat="server" Text=""></asp:Label></h1>
                </th>
            </tr>
        </thead>
    </table>
    <br />
    <asp:Image ID="imgPaseador" runat="server" />
    <br />
    <br />
    <div class="table-responsivexd">
    <center>
    <table class="table table-borderedxd table-light">
        <thead>
            <tr>
                <th colspan="2" class="bg-tabla-rojo">
                    Información del paseador:
                </th>
            </tr>
        </thead>
        <tr>
            <td>
                <asp:Label ID="lblIdUsuario" runat="server"></asp:Label><br />
            </td>
            <td>
                <asp:Label ID="IdPaseador" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Nombre:
            </td>
            <td>
                <asp:Label ID="lblNombre" runat="server"></asp:Label> <asp:Label ID="lblApellido" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Zona del paseador:
            </td>
            <td>
                <asp:Label ID="lblZona" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Teléfono
            </td>
            <td>
                <asp:Label ID="lblTelefono" runat="server"></asp:Label> <br />
            </td>
        </tr>
        <tr>
            <td>
                Precio del servicio por hora:
            </td>
            <td>
                $<asp:Label ID="lblPrecio" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Calificación promedio:
            </td>
            <td>
                <asp:Label ID="lblCalificacion" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="btnVolver" runat="server" CssClass="btn btn-danger btn-sm" OnClick="btnVolver_Click">Volver</asp:LinkButton>
                <asp:LinkButton ID="btnCalificaciones" runat="server" CssClass="btn btn-info btn-sm" OnClick="btnCalificaciones_Click">Ver comentarios y calificaciones</asp:LinkButton>
                <asp:LinkButton ID="btnContratar" runat="server" CssClass="btn btn-warning btn-sm" OnClick="btnContratar_Click">Contratar</asp:LinkButton>
                
            </td>
        </tr>
    </table>
        </center>
        </div>
     <br />


    </center>
</asp:Content>
