<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Servicio.aspx.cs" Inherits="Presentacion.Servicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>Servicio</h1>
    <br />
    <br />
    <br />
    <center>
        <div class="tabla-responsive">
        <table class="table table-borderedxd table-light">
            <thead>
                <td colspan="3" class="bg-tabla-rojo">
                <center>Elaboración de servicio</center>
                </td>
            </thead>
            <tr>
                <td>Id del paseador:</td>
                <td colspan="2"><asp:Label ID="lblIdPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Nombre del paseador:</td>
                <td colspan="2">
                    <asp:Label ID="lblNombrePa" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApellidoPa" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Zona del paseador:</td>
                <td colspan="2" ><asp:Label ID="lblZonaPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Servicio a prestar:</td>
                <td  colspan="2" ><asp:Label ID="lblServicioPa" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Tiempo de servicio:</td>
                <td>
                    <asp:DropDownList ID="ddlHoraInicio" runat="server">
                            <asp:ListItem Value="0" Selected="True" >Seleccionar</asp:ListItem>
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
                            <asp:ListItem Value="0" Selected="True" >Seleccionar</asp:ListItem>
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
                    <br />
                </td>
                <td>
                    <asp:CompareValidator ID="CVddlHoraFin" runat="server" ErrorMessage="Seleccione una hora de Fin" Display="Dynamic" ControlToValidate="ddlHoraFin" Operator="NotEqual" ValueToCompare="0" ForeColor="Red"></asp:CompareValidator>
                    <asp:CompareValidator ID="CVddlHoraInicio" runat="server" ErrorMessage="Seleccione una hora de inico" ControlToValidate="ddlHoraInicio" Operator="NotEqual" ValueToCompare="0" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <asp:CompareValidator ID="CVddlsTiempo" runat="server" ErrorMessage="La hora de fin es más temprana que la hora inicio" Display="Dynamic" ControlToCompare="ddlHoraFin" Type="Integer" ControlToValidate="ddlHoraInicio" Operator="LessThanEqual" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
             <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Id del cliente:</td>
                <td colspan="2"><asp:Label ID="lblIdCl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Nombre del cliente:</td>
                <td colspan="2">
                    <asp:Label ID="lblNombreCl" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApellidoCl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Mascota a pasear:</td>
                <td><asp:DropDownList ID="ddlMascota" runat="server" OnSelectedIndexChanged="ddlMascota_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="nombre_ma" DataValueField="Idmascota" AppendDataBoundItems="True">
                    <asp:ListItem value="0" Selected="True" >seleccionar</asp:ListItem>
                    </asp:DropDownList><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PyxisConnectionString %>' SelectCommand="SELECT [Idmascota], [Idusuario], [nombre_ma] FROM [Mascotas] WHERE ([Idusuario] = @Idusuario)"><SelectParameters>
<asp:ControlParameter ControlID="lblIdCl" PropertyName="Text" Name="Idusuario" Type="Int32"></asp:ControlParameter>
</SelectParameters>
</asp:SqlDataSource>

</td>
                <td>
<asp:CompareValidator ID="CVMascota" runat="server" ErrorMessage="seleccioneMascota" Type="Integer" ControlToValidate="ddlmascota" ForeColor="Red" Display="Dynamic" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
                </td>
                
            </tr>
            <tr valuetocompare="0">
                <td>Costo total:</td>
                <td colspan="2">$<asp:Label ID="lblPrecio" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2"><center>¿Quieres agregar algun comentario o sugerencia <br /> para el paseador?<br />
                    <br /><asp:TextBox ID="txtDetalles" runat="server"></asp:TextBox></center>
                    </td>
                
            </tr>
            <tr>
                <td><asp:Button ID="btnEnviar" CssClass="btn btn-success btn-sm" runat="server" Text="Enviar solicitud" OnClick="btnEnviar_Click"></asp:Button></td>
                <td><asp:Button ID="btnCancelar" CssClass="btn btn-danger btn-sm" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CausesValidation="False"></asp:Button></td>
            </tr>
            


        </table>
            </div>
    </center>


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

