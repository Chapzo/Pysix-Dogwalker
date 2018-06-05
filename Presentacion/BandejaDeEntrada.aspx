<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BandejaDeEntrada.aspx.cs" Inherits="Presentacion.BandejaDeEntrada" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><asp:Label ID="lblEntrada" runat="server" Text=""></asp:Label></h1>
<br />
    <br />
    <asp:GridView ID="GvBandeja" runat="server" AutoGenerateColumns="False" OnRowCreated="GvCreado" OnRowCommand="GvComandos" >
        <Columns>
            <asp:BoundField DataField="Idservicio" HeaderText="ID"/>
            <asp:BoundField DataField="fecha_se" HeaderText="Fecha de servicio" />
            <asp:BoundField DataField="estado_se" HeaderText="Estado del servicio" />
            <asp:BoundField DataField="detalles_se" HeaderText="Detalles del cliente" />
            <asp:BoundField DataField="se_idusuario" HeaderText="Id cliente" />
            <asp:BoundField DataField="pa_serv" HeaderText="Id Paseador"/>
            <asp:BoundField DataField="IdMascotaCliente" HeaderText="Id de mascota a pasear" />
            <asp:BoundField DataField="HoraIni" HeaderText="Hora de inicio" />
            <asp:BoundField DataField="HoraFin" HeaderText="Hora fin" />
            <asp:ButtonField CommandName= "PrcAceptar" Text="Aceptar"/>
            <asp:ButtonField CommandName= "PrcCancelar" Text="Cancelar"/>
            <asp:ButtonField CommandName= "PrcFinalizar" Text="Finalizar"/>
        </Columns>
    </asp:GridView>
    <br />

</asp:Content>
