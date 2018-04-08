<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Presentacion.WebForm1" %>

<!DOCTYPE html>

<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
  <link href="css/bootstrap.min.css" rel="stylesheet" />    
    
</head>


<body>
  <div class="login">
	<center><h1>Pysix Dogwalkcvvvver</h1></center>
      <form id="form1" runat="server">
          <center>
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
          <asp:Button ID="btnRegistro" runat="server" Text="Registrate" class="btn btn-primary btn-block btn-large" OnClick="btnRegistro_Click1" CssClass="btn btn-primary" Width="100px" />
                      </center>
                    </td>
              </tr>
    	
        
    
      
              </table>
              <br />
              <br />
              <asp:Label ID="labelRespuesta" runat="server"></asp:Label>   
              </center>
      </form>
</div>
  
    

</body>
</html>
