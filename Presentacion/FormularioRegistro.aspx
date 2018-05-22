<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="Presentacion.FormularioRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Estilos1.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <table>
                <tr>
                    <th colspan="2" class="thStandart">Formulario registro</th>
                </tr>
                <tr>
                    <th colspan="2">
                        <asp:Image ID="Image1" Width="150" runat="server" ></asp:Image>
                     </th>
                </tr>
                 <tr>
                    <th colspan="2">
                        <asp:FileUpload ID="FileUpload1" accept=".jpg" runat="server" />
                        <asp:Button ID="btnmirar" runat="server" Text="visualizar" OnClick="btnmirar_Click" />
                     </th>
                </tr>
                <tr>
                    <td>Usuario: </td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Hace falta usuario" ControlToValidate="txtUsuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña: </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword"  runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style3"> Confirmar Contraseña: </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPasswordConfirm"  runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre: </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Hace falta nombre" ControlToValidate="txtNombre" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Apellido: </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Hace falta apellido" ControlToValidate="txtApellido"   ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Correo electronico: </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator  ControlToValidate="txtEmail"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Hace falta el correo" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style6">Localidad</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" style="margin-left: 0px" >
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem Value="1">Usaquén</asp:ListItem>
                            <asp:ListItem Value="2">Chapinero</asp:ListItem>
                            <asp:ListItem Value="3">Santa fe</asp:ListItem>
                            <asp:ListItem Value="4">San Cristobal</asp:ListItem>
                            <asp:ListItem Value="5">Usme</asp:ListItem>
                            <asp:ListItem Value="6">Tunjuelito</asp:ListItem>
                            <asp:ListItem Value="7">Bosa</asp:ListItem>
                            <asp:ListItem Value="8">Kennedy</asp:ListItem>
                            <asp:ListItem Value="9">Fontibon</asp:ListItem>
                            <asp:ListItem Value="10">Engativá</asp:ListItem>
                            <asp:ListItem Value="11">Suba</asp:ListItem>
                            <asp:ListItem Value="12">Barrio Unidos</asp:ListItem>
                            <asp:ListItem Value="13">Teusaquillo</asp:ListItem>
                            <asp:ListItem Value="14">Los Mártires</asp:ListItem>
                            <asp:ListItem Value="15">Antonio Nariño</asp:ListItem>
                            <asp:ListItem Value="16">Puente Aranda</asp:ListItem>
                            <asp:ListItem Value="17">La Candelaria</asp:ListItem>
                            <asp:ListItem Value="18">Rafael Uribe</asp:ListItem>
                            <asp:ListItem Value="19">Ciudad Bolivar</asp:ListItem>
                            <asp:ListItem Value="20">Sumapaz</asp:ListItem>
                        </asp:DropDownList>
                       
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style6">Telefono</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="seleccione localidad" ControlToValidate="txtTelefono"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tipo de documento: </td>
                    <td>
                        <asp:DropDownList ID="ddlDocumento" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                            <asp:ListItem Value="C.C">Cedula de ciudadanía</asp:ListItem>
                            <asp:ListItem Value="R.C">Registro civil</asp:ListItem>
                            <asp:ListItem Value="T.I">Tarjeta de identidad</asp:ListItem>
                            <asp:ListItem Value="P">Pasaporte</asp:ListItem>
                            <asp:ListItem value="RUT">RUT</asp:ListItem>
                        </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Seleccione su documento" ControlToValidate="ddlDocumento"></asp:RequiredFieldValidator>
                          </td>
                </tr>
                <tr>
                    <td class="auto-style4">No. de documento: </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtNoDocumento" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Hace falta numero de documento" ControlToValidate="txtNoDocumento"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><center>
                    <td colspan="2">&nbsp;<asp:Button CssClass="Boton1" ID="btnCrearU" runat="server" OnClick="btnCrearU_Click" Text="Aceptar" />
                        &nbsp;<asp:Button CssClass="Boton2" ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </center>
                </tr>

            </table>
        </center>    
    </div>
    </form>
</body>
</html>
