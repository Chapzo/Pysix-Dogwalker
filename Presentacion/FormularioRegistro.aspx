<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="Presentacion.FormularioRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Estilos1.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <asp:Table runat="server" ID="table_reguistro" HorizontalAlign="Center">
                                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ColumnSpan="3" CssClass="thStandart">Formulario registro</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                        <asp:Image ID="Image1" Width="150" runat="server" ></asp:Image>
                     </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell ColumnSpan="3">
                        <asp:FileUpload ID="FileUpload1" accept=".jpg" runat="server"  />
                        <asp:Button ID="btnmirar" runat="server" Text="visualizar" OnClick="Btnmirar_Click" />
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Usuario: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox>
                       
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:RequiredFieldValidator ID="RVUsuario" runat="server" ErrorMessage="Hace falta usuario" ControlToValidate="txtUsuario" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                     </asp:TableCell>
                </asp:TableRow>
                
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style2">Nombre: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                       
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RVNombre"   runat="server" ErrorMessage="Hace falta nombre" ControlToValidate="txtNombre" ForeColor="#CC0000" Display="Dynamic" ></asp:RequiredFieldValidator> 
                        <asp:CompareValidator ID="CVNombre" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Dato Invalido" ForeColor="#CC0000" Operator="DataTypeCheck"></asp:CompareValidator>
                        <br/>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style1">Apellido: </asp:TableCell>
                    <asp:TableCell CssClass="auto-style1">
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                      
                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style1"><asp:RequiredFieldValidator ID="RVApellido" runat="server" ErrorMessage="Hace falta apellido" ControlToValidate="txtApellido" ForeColor="#CC0000" Display="Dynamic"   ></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#CC0000" Operator="DataTypeCheck"></asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style2">Correo electronico: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator  ControlToValidate="txtEmail"  ID="RVCorreo" runat="server" ErrorMessage="Hace falta el correo" ForeColor="#CC0000" Display="Dynamic" ></asp:RequiredFieldValidator> 
                        <br /><asp:RegularExpressionValidator ID="EVCorreo" runat="server" ErrorMessage="Correo invalido" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="auto-style6">Localidad</asp:TableCell>
                    <asp:TableCell CssClass="auto-style7">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" style="margin-left: 0px" AutoPostBack="True" >
                            <asp:ListItem Value=0>Seleccionar</asp:ListItem>
                            <asp:ListItem Value=1>Usaquén</asp:ListItem>
                            <asp:ListItem Value=2>Chapinero</asp:ListItem>
                            <asp:ListItem Value=3>Santa fe</asp:ListItem>
                            <asp:ListItem Value=4>San Cristobal</asp:ListItem>
                            <asp:ListItem Value=5>Usme</asp:ListItem>
                            <asp:ListItem Value=6>Tunjuelito</asp:ListItem>
                            <asp:ListItem Value=7>Bosa</asp:ListItem>
                            <asp:ListItem Value=8>Kennedy</asp:ListItem>
                            <asp:ListItem Value=9>Fontibon</asp:ListItem>
                            <asp:ListItem Value=10>Engativá</asp:ListItem>
                            <asp:ListItem Value=11>Suba</asp:ListItem>
                            <asp:ListItem Value=12>Barrio Unidos</asp:ListItem>
                            <asp:ListItem Value=13>Teusaquillo</asp:ListItem>
                            <asp:ListItem Value=14>Los Mártires</asp:ListItem>
                            <asp:ListItem Value=15>Antonio Nariño</asp:ListItem>
                            <asp:ListItem Value=16>Puente Aranda</asp:ListItem>
                            <asp:ListItem Value=17>La Candelaria</asp:ListItem>
                            <asp:ListItem Value=18>Rafael Uribe</asp:ListItem>
                            <asp:ListItem Value=19>Ciudad Bolivar</asp:ListItem>
                            <asp:ListItem Value=20>Sumapaz</asp:ListItem>
                        </asp:DropDownList>
                       
                        
                       
                    </asp:TableCell>
                     <asp:TableCell>
<asp:CompareValidator ID="CompareValidator1" runat="server" Operator="NotEqual" ValueToCompare=0  Type="Integer"  ControlToValidate="ddlLocalidad" ErrorMessage="Selecione una localidad" ForeColor="#CC0000" Display="Dynamic"></asp:CompareValidator>
                     </asp:TableCell>
                                     </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell >Barrio </asp:TableCell>
                    <asp:TableCell>
                       <asp:DropDownList ID="DdlBarrio" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_barrio" AppendDataBoundItems="True" DataValueField="IdBarrio" >
                           <asp:ListItem Value="-1">Seleccionar</asp:ListItem>
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PyxisConnectionString2 %>" SelectCommand="ListarBarrios" SelectCommandType="StoredProcedure">
                            <SelectParameters> <asp:ControlParameter ControlID="ddlLocalidad" Name="localidad" PropertyName="SelectedValue" Type="Int32" /> </SelectParameters>
                        </asp:SqlDataSource>

                    </asp:TableCell>
                     <asp:TableCell>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DdlBarrio" ErrorMessage="Seleccione un Barrio porfavor" InitialValue="-1" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                     </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="auto-style6">Telefono</asp:TableCell>
                    <asp:TableCell CssClass="auto-style7">
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        
                    </asp:TableCell>
                     <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese Telefono" ControlToValidate="txtTelefono" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtTelefono" Display="Dynamic" ErrorMessage="Dato Invalido" ForeColor="#CC0000" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style2">Tipo de documento: </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlDocumento" runat="server">
                            <asp:ListItem Value="none">Seleccionar</asp:ListItem>
                            <asp:ListItem Value="C.C">Cedula de ciudadanía</asp:ListItem>
                            <asp:ListItem Value="R.C">Registro civil</asp:ListItem>
                            <asp:ListItem Value="T.I">Tarjeta de identidad</asp:ListItem>
                            <asp:ListItem Value="P">Pasaporte</asp:ListItem>
                            <asp:ListItem value="RUT">RUT</asp:ListItem>
                        </asp:DropDownList>
                              
                          </asp:TableCell>
                    <asp:TableCell><asp:CompareValidator ID="CompareValidator2" runat="server" Operator="NotEqual" ValueToCompare="none"  type="String" ControlToValidate="ddlDocumento" ErrorMessage="Seleccione un Documento" ForeColor="#CC0000"></asp:CompareValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style4">No. de documento: </asp:TableCell>
                    <asp:TableCell CssClass="auto-style5">
                        <asp:TextBox ID="txtNoDocumento" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Hace falta numero de documento" ControlToValidate="txtNoDocumento" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtNoDocumento" Display="Dynamic" ErrorMessage="Dato Invalido" ForeColor="#CC0000" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style3">Contraseña: </asp:TableCell>
                    <asp:TableCell CssClass="auto-style1">
                        <asp:TextBox ID="txtPassword"  runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>

                     </asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell CssClass="auto-style3"> Confirmar Contraseña: </asp:TableCell>
                    <asp:TableCell CssClass="auto-style1">
                        <asp:TextBox ID="txtPasswordConfirm"  runat="server" TextMode="Password"></asp:TextBox>
                           
                    </asp:TableCell><asp:TableCell>
                         <asp:CompareValidator ID="CVConfirmarCon" runat="server" Operator="Equal" ControlToCompare="txtPassword"  ControlToValidate="txtPasswordConfirm" ErrorMessage="No concuerdan" ForeColor="#CC0000" Display="Dynamic"></asp:CompareValidator>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow >
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" >&nbsp;<asp:Button CssClass="Boton1" ID="BtnCrearU" runat="server" OnClick="BtnCrearU_Click" Text="Aceptar" />
                        &nbsp;<asp:Button CssClass="Boton2" ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        </asp:TableCell>
                   
                </asp:TableFooterRow>
        
            </asp:Table>    
        <asp:Table ID="Table_final" Visible="false" HorizontalAlign="Center"  runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell HorizontalAlign="Center" > <asp:Label runat="server">Confirmar Creacion </asp:Label> </asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell><asp:label text="el usuario Ya ha sido creado correctamente" ID="Lblinfo" runat="server"  /></asp:TableCell>
              </asp:TableRow>
            <asp:TableHeaderRow>
                <asp:TableCell HorizontalAlign="Justify">
                    <asp:Button runat="server" CssClass="Boton1"   ID="BtnContinuar" Text="Continuar"  OnClick="BtnContinuar_Click"  />
                    <asp:Button  runat ="server" ID="BtnCancelar2" Text="Cancelar" CssClass="Boton2" OnClientClick="BtnCancelar2_click" />
                </asp:TableCell>
            </asp:TableHeaderRow>     
        </asp:Table>  
    </div>
    </form>
</body>
</html>
