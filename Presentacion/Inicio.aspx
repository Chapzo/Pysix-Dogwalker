<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Presentacion.WebForm1" %>

<!DOCTYPE html>

<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>

</head>
<link href="css/Estilos1.css" rel="stylesheet" />
<body>
  <div class="login">
	<h1>PYXIS</h1>
      <form id="form1" runat="server">
    	<asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario" ></asp:TextBox >
        <asp:TextBox type="password" ID="txtContrasena" runat="server" placeholder="Contraseña" ></asp:TextBox>
    <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" class="btn btn-primary btn-block btn-large" OnClick="Button1_Click1" CssClass="auto-style1" Width="298px" />
          <asp:Button ID="btnRegistro" runat="server" Text="Registrate" class="btn btn-primary btn-block btn-large" OnClick="btnRegistro_Click1" CssClass="auto-style1" Width="298px" />
      <asp:Label ID="labelRespuesta" runat="server"></asp:Label>   
      </form>
</div>
  
    

</body>
</html>
