<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Presentacion.Historial" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1>
    <asp:Label ID="lblEntrada" runat="server" Text=""></asp:Label></h1>
    <br />
    <br />
    <asp:GridView ID="GvHistorial" runat="server" AutoGenerateColumns="False" OnRowCreated="GvCreado" OnRowCommand="GvComandos" CssClass="mGrid" style="margin-left: 0px" AllowPaging="true" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7">
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
            <asp:ButtonField CommandName= "PrcCalificar" Text="Finalizar"/>
        </Columns>
    </asp:GridView>
    <br />

    </center>
</asp:Content>
