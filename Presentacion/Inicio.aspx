<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Presentacion.WebForm1" %>

<!DOCTYPE html>

<html >
<head>
  <meta charset="UTF-8">
  <title>Pyxis Dogwalker - Inicia Sesión</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="User Icon Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>

<body>
  <div class="container">
	<h1>¡Bienvenido a Pyxis Dogwalker!</h1>
      
     <div class="contact-form">
	      <div class="profile-pic">
	        <img src="img/IconoPyxis.png" alt="Firulais :v"/>
	      </div>	 
	 <div class="signin">
         <form id="form1" runat="server">
             <asp:TextBox ID="txtUsuario" runat="server" CssClass="user" placeholder="Usuario" ></asp:TextBox >
             <%--<input type="text" class="user" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" />--%>
             <asp:TextBox type="password" ID="txtContrasena" runat="server" CssClass="pass" placeholder="Contraseña"></asp:TextBox>
		     <%--<input type="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />--%>
		     <p><a href="FormularioRegistro.aspx">¿No tienes cuenta? Registrate aquí</a></p>		  
     
      </div>
         <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" class="btn btn-primary btn-block btn-large" OnClick="Button1_Click1"/>	 
	     <%--<input type="submit" value="Login"/>--%> 
	 </div>
      <br />
      <center>
      <asp:Label ID="labelRespuesta" runat="server"></asp:Label>
       </center>
      </form>
</div>
<div class="footer">
     <p>Copyright &copy; 2018 Pyxis Dogwalker. Todos los derechos reservados | Desarrollado por Leonardo Avella y Juan Chaparro, pero pensado por Diego Senior XDXDX (rip :c)</p>
</div>
</body>


          <%--<center>
          <table>
              <th td colspan="2">¡Bienvenido!</th>
              <tr>
                  <td colspan="2"><asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario" ></asp:TextBox ></td>
              </tr>
              <tr>
                   <td colspan="2"><asp:TextBox type="password" ID="txtContrasena" runat="server" placeholder="Contraseña" ></asp:TextBox></td>
              </tr>
              <tr>
                  <td>
                      <center>
                          <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" class="btn btn-primary btn-block btn-large" OnClick="Button1_Click1" CssClass="auto-style1" Width="100px" />
                      </center>
                    <td>
                        <center>
          <asp:Button ID="btnRegistro" runat="server" Text="Registrate" class="btn btn-primary btn-block btn-large" OnClick="btnRegistro_Click1" CssClass="auto-style1" Width="100px" />
                      </center>
                    </td>
              </tr>
    	
        
    
      
              </table>
              <br />
              <br />
                 
              </center>
      </form>
</div>
  
    

</body>--%>
</html>
