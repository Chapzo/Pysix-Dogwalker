<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EleccionFormulario.aspx.cs" Inherits="Presentacion.EleccionFormulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Estilos1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <center>
       <table>
           <tr>
               <th class="thStandart" colspan="2">¿Qué tipo de usuario quieres ser?</th>
           </tr>
           <tr>
               <td><a href="FormularioMascota.aspx"><img src="img/SiluetaCliente.png" width="250px" height="250px" id="imgCliente" /></a></td>
               <td><a href="FormularioPaseador.aspx"><img src="img/SiluetaPaseador.png" width="250px" height="250px" id="imgPaseador"/></a></td>
           </tr>
           <tr>
               
               <td><center><a href="FormularioMascota.aspx">Cliente</a></center></td>
               <td><center><a href="FormularioPaseador.aspx">Paseador</a></center></td>
               
           </tr>
           <tr>
               <td colspan="2">
                   <asp:Button ID="btnCancelar" runat="server" CssClass="Boton2" Text="Cancelar" OnClick="btnCancelar_Click" /></td>
           </tr>
       </table>
   </center>
    </form>
</body>
</html>
