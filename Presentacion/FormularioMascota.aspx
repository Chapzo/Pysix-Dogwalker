<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioMascota.aspx.cs" Inherits="Presentacion.FormularioMascota" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mascota</title>
    <link href="css/Estilos1.css" rel="stylesheet" />
    <script runat="server">   void Check_Clicked(Object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
            {
                ddlRaza.Enabled = false;
                TxtOtro.Visible = true;
                CompareValidator2.Enabled = false;
            }
            else
            {
                ddlRaza.Enabled = true;
                TxtOtro.Visible = false;
                CompareValidator2.Enabled = true;
            }
        } </script>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="FormPaseador" runat="server">
    <div>
        <center>
            <table runat="server" id="Table_formMascota">
                <tr>
                    <th colspan="3" class="thMascota">Formulario mascota</th>
                </tr>
                <tr>
                    <td colspan="3">
<asp:Image ID="ImagePerro" runat="server"></asp:Image>
                    </td> 

                </tr>
                <tr>
                    <td>
               <asp:FileUpload ID="FileUpload1" accept=".jpg" runat="server"></asp:FileUpload>
                        </td>
                    <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Inserte Imagen" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td>Tamaño: </td>
                    <td>
                        <asp:DropDownList ID="ddlTamaño" runat="server">
                            <asp:ListItem Value="0" >Seleccionar</asp:ListItem>
                            <asp:ListItem>Grande</asp:ListItem>
                            <asp:ListItem>Mediano</asp:ListItem>
                            <asp:ListItem Value="Pequeno">Pequeño</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td> 
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="seleccione el tamaño" ControlToValidate="ddltamaño" Operator="NotEqual" ValueToCompare="0" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Edad: </td>
                    <td>
                        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                    </td>
                   <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese edad" ControlToValidate="txtEdad" ForeColor="Red"></asp:RequiredFieldValidator>

                   </td>
                </tr>
                <tr>
                    <td>Raza: </td>
                    <td>
                        <asp:DropDownList ID="ddlRaza" runat="server" DataSourceID="SqlRazas" DataTextField="nombre" DataValueField="idRaza" AppendDataBoundItems="True">
                         <asp:ListItem Value="0" Selected="True">Seleccionar</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlRazas" runat="server" ConnectionString="<%$ ConnectionStrings:PyxisConnectionString2 %>" SelectCommand="SELECT [idRaza], [nombre] FROM [Razas]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" Display="Dynamic" ErrorMessage="Seleccione raza" Operator="NotEqual" ValueToCompare="0" ControlToValidate="ddlRaza" ForeColor="Red"></asp:CompareValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Otro" OnCheckedChanged="Check_Clicked" AutoPostBack="True"  ></asp:CheckBox>
                    </td>
                    <td>
                    <asp:TextBox ID="TxtOtro" runat="server"  AutoPostBack="True" Visible="false"></asp:TextBox>
                        
                    </td>
                    <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Inserte raza nueva" ControlToValidate="TxtOtro" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Nombre: </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                       <td class="auto-style1">


<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese nombre" ControlToValidate="txtNombre" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <center>
                        <asp:Button ID="btnCrearM" CssClass="Boton1" runat="server" Text="Crear" OnClick="btnCrearM_Click" />
                        <asp:Button ID="btnCancelar" CssClass="Boton2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                            <asp:Button ID="Btnfinalizar" runat="server" Text="Finalizar" OnClick="Btnfinalizar_Click"></asp:Button>
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