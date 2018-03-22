<%@ Page Language="C#"  MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ControlUS.aspx.cs" Inherits="Presentacion.ControlUS" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

        <div>
            Paseador<br />
            <asp:Button ID="ButBuscar" runat="server" Text="Buscar" OnClick="ButBuscar_Click" /><asp:TextBox ID="Textbuscar" runat="server" Width="494px"></asp:TextBox>
            
             <table>
                 
                 
                 
                 <tr>
                    <td id="esto" runat="server" colspan="3" style="text-align:center" class="auto-style5">
                        
                        
                        <asp:GridView ID="GrUsuarios" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="Brown" GridLines="none" OnRowCommand="grpa_Comand" OnRowCreated="Gr_created"  >
                          <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Idpaseador" HeaderText="ID" />
                                <asp:BoundField DataField ="Usunombre" HeaderText="Nombre" /> 
                                <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                                <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                                <asp:BoundField DataField="correo" HeaderText="Correo" />
                                <asp:BoundField DataField="estado" HeaderText="Estado" />
                                <asp:BoundField DataField="nombre" HeaderText="localidad" />
                                <asp:BoundField Visible="false" Datafield="Experiencia" Headertext="hojadevida"                                           />
                                <asp:ButtonField CommandName= "Inactivar" Text="Inactivar"/>

                                <asp:ButtonField CommandName= "ver" Text="ver"/>
                                
                            </Columns>
                            <EditRowStyle BackColor="Green" />
                            <FooterStyle BackColor="Azure" Font-Bold="true" ForeColor="YellowGreen" />
                            <HeaderStyle BackColor="Brown" Font-Bold="true" ForeColor="PaleGoldenrod" />
                            <PagerStyle BackColor="WindowText" ForeColor="LightSteelBlue" HorizontalAlign="Center" />
                            <RowStyle BackColor="#e68268" />
                            <SelectedRowStyle BackColor="YellowGreen" />
                            <SortedAscendingCellStyle BackColor="YellowGreen"/>
                            <SortedAscendingHeaderStyle backcolor="Turquoise"/>
                            <SortedDescendingCellStyle backcolor="Yellow"/>
                            <SortedDescendingHeaderStyle BackColor="WindowFrame"/>

                        </asp:GridView> 
                       
                        <asp:Button ID="BTActualizar" runat="server" CssClass="auto-style6" Height="25px" OnClick="BTActualizar_Click" Text="Actualizar" Width="132px" />
                        
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                  
                </tr>
            </table>
            <table id="TBlCrear" runat="server"  >
                <tr>
                    <th colspan="4">
                        <asp:Label ID="lbltitulo" runat="server" Text="Crear Usuario"></asp:Label></th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">

                        <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>

                    </td>
                    <td class="auto-style1">

                        <asp:TextBox ID="txtApellido" runat="server" ></asp:TextBox>

                     </td> 

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Telefono:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTelefono" runat="server" ></asp:TextBox>
                    </td>
                    <td>

                        <asp:Label ID="Label4" runat="server" Text="Correo:"></asp:Label>

                    </td>
                    <td class="auto-style1">

                        <asp:TextBox ID="txtCorreo" runat="server" ></asp:TextBox>

                     </td> 
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Dirección:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDireccion" runat="server" Height="16px"></asp:TextBox>
                    </td>
                    <td>

                        <asp:Label ID="label6" runat="server" Text="Contraseña"></asp:Label>

                    </td>
                    <td class="auto-style1">

                        <asp:TextBox ID="Textpass" runat="server"></asp:TextBox>

                     </td> 
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="estado"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="Textestado" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">

                        <asp:Label ID="Label8" runat="server" Text="tipo de usuario"></asp:Label>

                    </td>
                    <td class="auto-style4">

                        <asp:TextBox ID="TpUsuario" runat="server"></asp:TextBox>

                     </td> 
                </tr>
              </table>
        </div>
</asp:Content>