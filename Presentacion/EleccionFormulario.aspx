<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EleccionFormulario.aspx.cs" Inherits="Presentacion.EleccionFormulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Estilos1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
       <asp:Table runat="server" ID="Table_Selección" HorizontalAlign="Center" >
           <asp:TableRow>
               <asp:TableHeaderCell CssClass="thStandart" ColumnSpan="2"><asp:Label ID="lblPregunta" Text="" runat="server" /></asp:TableHeaderCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell CssClass="auto-style1"><a href="FormularioMascota.aspx"><img src="img/SiluetaCliente.png" width="250" height="250" id="imgCliente" /></a></asp:TableCell>
               <asp:TableCell CssClass="auto-style1"><a href="FormularioPaseador.aspx"><img src="img/SiluetaPaseador.png" width="250" height="250" id="imgPaseador"/></a></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               
               <asp:TableCell  HorizontalAlign="Center"><a href="FormularioMascota.aspx">Cliente</a></></asp:TableCell>
               <asp:TableCell HorizontalAlign="Center" ><a href="FormularioPaseador.aspx">Paseador</a></asp:TableCell>
               
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell ColumnSpan="2">
                   <asp:Button  runat="server" CssClass="Boton3" ID="btn_Regresar" Text="regresar" OnClick="BtnRegresar_Click"/>
                   <asp:Button ID="btnCancelar" runat="server" CssClass="Boton2" Text="Cancelar" OnClick="BtnCancelar_Click" /></asp:TableCell>
           </asp:TableRow>
       </asp:Table>
 
         <asp:Table ID="Table_final" Visible="false" HorizontalAlign="Center"  runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell HorizontalAlign="Center" > <asp:Label runat="server">Seguro Usted desea salir </asp:Label> </asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell><asp:label text="el usuario Ya ha sido creado correctamente" ID="Lblinfo" runat="server" /></asp:TableCell></asp:TableRow><asp:TableHeaderRow>
                <asp:TableCell>
                    <asp:Button runat="server" CssClass="Boton1"   ID="btnSi" Text="Si"  OnClick="BtnSi_Click" />
                    <asp:Button runat ="server" ID="btnNo" Text="no" CssClass="Boton2" OnClick="BtnNo_click" />
                </asp:TableCell></asp:TableHeaderRow></asp:Table>


    </form></body></html>