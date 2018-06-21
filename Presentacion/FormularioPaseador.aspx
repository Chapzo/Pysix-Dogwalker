<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioPaseador.aspx.cs" Inherits="Presentacion.FormularioPaseador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paseador</title>
    <link href="css/Estilos1.css" rel="stylesheet" />
     <script type = "text/javascript">
         function ValidateModuleList(source, args) {
             var chkListModules = document.getElementById('<%= CblDias.ClientID %>');
        var chkListinputs = chkListModules.getElementsByTagName("input");
        for (var i = 0; i < chkListinputs.length; i++) {
            if (chkListinputs[i].checked) {
                args.IsValid = true;
                return;
            }
        }
        args.IsValid = false;
    }
    </script>

   
</head>
<body>
    <form id="FormPaseador" runat="server">
    <div>
        <center>
            <table runat="server" id="Table_FormPaseador">
                <tr>
                    <th colspan="4" class="thPaseador">Formulario paseador</th>
                </tr>
                <tr>
                    <td>Disponibilidad: </td>
                    <td>
                        <asp:DropDownList ID="ddlHoraInicio" runat="server">
                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
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
                        <asp:DropDownList ID="ddlHoraFin" runat="server" EnableTheming="False" >
                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
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
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlHoraFin" Display="Dynamic" ErrorMessage="Selecciona una hora de finalizacion" ForeColor="Red" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="ddlHoraInicio" Display="Dynamic" ErrorMessage="Selecciona una hora de Inicio" ForeColor="Red" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="La hora de fin es más temprana que la hora inicio" Display="Dynamic" ControlToCompare="ddlHoraFin" ControlToValidate="ddlHoraInicio" ForeColor="Red" Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
                        
                        </td>
                        <td class="auto-style2">
                        Los días:
                        <br />
                        <asp:CheckBoxList ID="CblDias" runat="server">                            
                            <asp:ListItem Value="Lun">Lunes</asp:ListItem>
                            <asp:ListItem Value="Mar">Martes</asp:ListItem>
                            <asp:ListItem Value="Mie">Miércoles</asp:ListItem>
                            <asp:ListItem Value="Jue">Jueves</asp:ListItem>
                            <asp:ListItem Value="Vie">Viernes</asp:ListItem>
                            <asp:ListItem Value="Sab">Sábado</asp:ListItem>
                            <asp:ListItem Value="Dom">Domingo</asp:ListItem>
                        </asp:CheckBoxList>
                            
                       
                        </td>
                    <td>  
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Seleccione un dia"  ClientValidationFunction="ValidateModuleList" Display="Dynamic" ForeColor="Red" ></asp:CustomValidator>
                    </td>
                    </tr>
                      
                <tr>
                    <td>Especialidad: </td>           
                    <td colspan="2">
                        <asp:DropDownList ID="DdlEspecialidad" runat="server">
                            <asp:ListItem Selected="True" Value="0">Seleccionar</asp:ListItem>
                            <asp:ListItem>BañarPerros</asp:ListItem>
                            <asp:ListItem>PasearPerros</asp:ListItem>
                            <asp:ListItem>EntrenarPerros</asp:ListItem>
                            
                        </asp:DropDownList>
                   </td>
                    <td class="auto-style1">
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="DdlEspecialidad" ErrorMessage="Selecciona una especialidad" ForeColor="Red" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
                        
                    </td>
                </tr>
                 <tr>
                    <td>Precio del servicio:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPrecio" runat="server" ToolTip="Precio POr hora"></asp:TextBox>
                        </td>
                     <td class="auto-style1">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" ErrorMessage="Ingrese el precio de su servicio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPrecio" Display="Dynamic" ErrorMessage="Dato Invalido" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                    <td >Hoja de vida:</td>
                    <td  colspan="2">
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                     <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Inserte su Hoja de vida" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center>
                        <asp:Button ID="btnCrearP" CssClass="Boton1" runat="server" Text="Crear" OnClick="BtnCrearP_Click" />
&nbsp;<asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" CausesValidation="False" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                         </center>
                    </td>
                </tr>

            </table>
<asp:Table ID="Table_ConfirmCancelar" Visible="false" HorizontalAlign="Center"  runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell HorizontalAlign="Center" > <asp:Label runat="server" Text="Seguro Usted desea salir?"> </asp:Label> </asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell><asp:label text="" ID="Lblinfo" runat="server" /></asp:TableCell></asp:TableRow><asp:TableHeaderRow>
                <asp:TableCell>
                    <asp:Button runat="server" CssClass="Boton1"   ID="btnSi" Text="Si"  OnClick="BtnSi_Click" />
                    <asp:Button runat ="server" ID="btnNo" Text="no" CssClass="Boton2" OnClick="BtnNo_click" />
                </asp:TableCell></asp:TableHeaderRow></asp:Table></center></div></form></body></html>