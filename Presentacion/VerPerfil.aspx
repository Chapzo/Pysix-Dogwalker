<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VerPerfil.aspx.cs" Inherits="Presentacion.VerPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Hola</h3> 
    <table>
           <tr>
            <th colspan="4">informacion de usuario  </th>

           </tr>
         <tr>
            <td colspan="4"><asp:Image ID="imgPerfil" Width="150" runat="server" aling="center" />  </td>  
        </tr>
        <tr>
            <td>  <asp:Label ID="LblNom" runat="server" Text="Nombre"></asp:Label>  </td>
            <td> <asp:TextBox ID="Txtnom" runat="server" > </asp:TextBox> </td>   
            <td>  <asp:Label ID="LblApe" runat="server" Text="Apellido"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtApe" runat="server" > </asp:TextBox> </td>  
               
        </tr>
         <tr>
               <td>  <asp:Label ID="LblCorreo" runat="server" Text="Correo"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtCorreo" runat="server" > </asp:TextBox> </td>    
             <td>  <asp:Label ID="LblDo" runat="server" Text="Numero de documento"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtDo" runat="server" > </asp:TextBox> </td> 
        </tr>
         <tr>
               <td>  <asp:Label ID="Lbllocalidad" runat="server" Text="Localidad"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtLocalidad" runat="server" > </asp:TextBox> </td>   
             <td>  <asp:Label ID="LblTelefono" runat="server" Text="Telefono"></asp:Label>  </td>
            <td> <asp:TextBox ID="TxtTelefono" runat="server" > </asp:TextBox> </td>     
        </tr>
         <tr>
                <td>  <asp:Label ID="Lblrol" runat="server" Text="Rol"></asp:Label>  </td>
            <td> <asp:TextBox ID="Txtrol" runat="server" > </asp:TextBox> </td>   
            
            <td>  <asp:DropDownList ID="ddlLocalidad" runat="server" style="margin-left: 0px" >
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
                        </asp:DropDownList> </td>

        </tr>
       
         </table><br />
    <asp:Table ID="TblPas" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell ColumnSpan="4">Informacion de paseador  </asp:TableHeaderCell>
        </asp:TableRow>
         <asp:TableRow>
          <asp:TableCell>  <asp:Label ID="LblPrecio" runat="server" Text="Precio"></asp:Label>  </asp:TableCell>
            <asp:TableCell> <asp:TextBox ID="TxtPrec" runat="server" > </asp:TextBox> </asp:TableCell>    
             <asp:TableCell>  <asp:Label ID="Lblcalif" runat="server" Text="Calificacion"></asp:Label>  </asp:TableCell>
            <asp:TableCell><asp:Label ID="LblCResul" runat="server"></asp:Label> </asp:TableCell>    
        </asp:TableRow>
         <asp:TableRow>
          <asp:TableCell>  <asp:Label ID="LblEstado" runat="server" Text="Estado"></asp:Label>  </asp:TableCell>
            <asp:TableCell> <asp:Label ID="LblEsR" runat="server" Text="Label"></asp:Label></asp:TableCell>  
               <asp:TableCell>  <asp:Label ID="LblDisp" runat="server" Text="disponibilidad"></asp:Label>  </asp:TableCell>
            <asp:TableCell> <asp:TextBox ID="Txtdisponibilidad" runat="server" > </asp:TextBox> </asp:TableCell> 
        </asp:TableRow>
         <asp:TableRow>
          <asp:TableCell>  <asp:Label ID="LblHoraI" runat="server" Text="hora de inicio"></asp:Label>  </asp:TableCell>
           <asp:TableCell> <asp:DropDownList ID="ddlHoraInicio" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
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
                        </asp:DropDownList> </asp:TableCell> 
        </asp:TableRow>
         <asp:TableRow>
          <asp:TableCell>  <asp:Label ID="LblHoraF" runat="server" Text="hora de fin"></asp:Label>  </asp:TableCell>
            <asp:TableCell>       <asp:DropDownList ID="ddlHoraFin" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
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
                        </asp:DropDownList></asp:TableCell>    
        </asp:TableRow>

    </asp:Table>
    

</asp:Content>