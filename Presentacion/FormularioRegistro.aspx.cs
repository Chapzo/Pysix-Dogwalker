using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using DataBase;
using System.Drawing;

namespace Presentacion
{
    public partial class FormularioRegistro : System.Web.UI.Page
    {
        Usuario objusuario = new Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    
                    Usuarios objUSuario = (Usuarios)Session["Usuario"];
                    txtNombre.Text = objUSuario.nombre;
                    txtApellido.Text = objUSuario.apellido;
                    txtEmail.Text = objUSuario.Localidades.nombre;
                    txtPassword.Text = string.Empty;
                    ddlLocalidad.SelectedValue = objUSuario.localidad.ToString();
                    ddlDocumento.SelectedValue = objUSuario.tipo_doc;
                    txtNoDocumento.Text = Convert.ToString(objUSuario.documento);
                    txtTelefono.Text = Convert.ToString(objUSuario.telefono);
                    
                    
                }
                catch (Exception Ex)
                {



                }
            }
        }
       
        public void imagenver()
        {

            FileUpload1.SaveAs(Server.MapPath("UsuariosImg") + "/azucar.jpg");
            Image1.ImageUrl = ("../UsuariosImg/azucar.jpg");
            Label1.Text = "La imagen " + FileUpload1.FileName + " ha cargado correctamente";

        }
       
        public string encriptar()
        {
            string PasswordEncriptado = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(txtPassword.Text);
            PasswordEncriptado = Convert.ToBase64String(encryted);
            return PasswordEncriptado;
        }
     
        protected void btnCrearU_Click(object sender, EventArgs e)
        {


            try
            {

                if (!FileUpload1.HasFile)
                {

                    imagenver();
                    objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, encriptar(), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, Int64.Parse(txtNoDocumento.Text), int.Parse(DropDownList1.SelectedValue), txtUsuario.Text);
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, encriptar());

                    Session["Usuario"] = objUsuario;
                    Label1.Text = " haz sido creado correctamente Usuario ";
                    
                    table_reguistro.Visible = false;
                    Table_final.Visible = true;
                }

                else
                {
                    imagenver();
                    objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, encriptar(), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, Int64.Parse(txtNoDocumento.Text), int.Parse(DropDownList1.SelectedValue), txtUsuario.Text);
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, encriptar());
                    Session["Usuario"] = objUsuario;
                    table_reguistro.Visible = false;
                    Table_final.Visible = true ;
                    Lblinfo.Text = ("El usuario con el nombre" + objUsuario.nombre +" "+ objUsuario.apellido + " ha sido creado");    
                }






                
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("inicio.aspx");
            
        }

        protected void btnmirar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(FileUpload1.FileName))
            {
                                      
                
                FileUpload1.SaveAs(Server.MapPath("UsuariosImg") + "/azucar.jpg");
                Image1.ImageUrl = ("../UsuariosImg/azucar.jpg");
                Label1.Text="La imagen "+ FileUpload1.FileName +" ha cargado correctamente";
               
           }
        }

        protected void btnCancelar2_click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("inicio.aspx");

        }
        protected void btnContinuar_Click(object sender,EventArgs e)
        {
            Response.Write("Usuariocreado");
            Response.Redirect("EleccionFormulario.aspx");
            
        }
    }
}