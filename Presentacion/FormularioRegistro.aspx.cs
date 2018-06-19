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
                Usuarios objUSuario = (Usuarios)Session["Usuario"];


                try
                {


                    txtNombre.Text = objUSuario.nombre;
                    txtApellido.Text = objUSuario.apellido;
                    txtEmail.Text = objUSuario.correo;
                    txtPassword.Text = string.Empty;
                    txtPasswordConfirm.Text = string.Empty;
                    ddlLocalidad.SelectedValue = objUSuario.Localidades.nombre;
                    ddlDocumento.SelectedValue = objUSuario.tipo_doc;
                    txtNoDocumento.Text = Convert.ToString(objUSuario.documento);
                    txtTelefono.Text = Convert.ToString(objUSuario.telefono);
                    DdlBarrio.SelectedValue = objUSuario.Barrios.Nombre_barrio;
                    Image1.ImageUrl = ("../UsuariosImg/" + objUSuario.Idusuario + objUSuario.nombre + objUSuario.apellido + ".jpg");

                }
                catch (Exception Ex)
                {

                    Lblinfo.Text = Ex.Message;
                }

            }
            else
            {
                Session.Abandon();
                Response.Redirect("Inicio.aspx");

            }

        }
    
       
        public void Imagenver()
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            FileUpload1.SaveAs(Server.MapPath("UsuariosImg") + ("/" + objUSuario.Idusuario + objUSuario.nombre + objUSuario.apellido+ ".jpg"));
            Image1.ImageUrl = ("../UsuariosImg/azucar.jpg");
            Label1.Text = "La imagen " + FileUpload1.FileName + " ha cargado correctamente";

        }
       
        public string Encriptar()
        {
            string PasswordEncriptado = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(txtPassword.Text);
            PasswordEncriptado = Convert.ToBase64String(encryted);
            return PasswordEncriptado;
        }
     
        protected void BtnCrearU_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];

            try
            {
                if ((Usuarios)Session["Usuario"]==null )

                {
                    
                    objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, Encriptar(), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, Int64.Parse(txtNoDocumento.Text), int.Parse(DdlBarrio.SelectedValue), txtUsuario.Text);
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, Encriptar());
                    Session["Usuario"] = objUsuario;
                    Imagenver();
                    table_reguistro.Visible = false;
                    Table_final.Visible = true ;
                    Lblinfo.Text = ("El usuario con el nombre " + objUsuario.nombre +" "+ objUsuario.apellido + " ha sido creado");    
                }
                else

                {
                    objusuario.ActualizarUsuario(objUSuario.Idusuario, txtNombre.Text, txtApellido.Text, Int64.Parse(txtTelefono.Text), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), ddlDocumento.Text, Encriptar(), txtUsuario.Text, int.Parse(DdlBarrio.SelectedValue), Int64.Parse(txtNoDocumento.Text));
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, Encriptar());
                    Session["Usuario"] = objUsuario;
                    Imagenver();
                    table_reguistro.Visible = false;
                    Table_final.Visible = true;
                    Lblinfo.Text = ("El usuario con el nombre " + objUsuario.nombre + " " + objUsuario.apellido + " ha sido creado");
                }
      }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("inicio.aspx");
            
        }

        protected void Btnmirar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(FileUpload1.FileName))
            {
                                      
                
                FileUpload1.SaveAs(Server.MapPath("UsuariosImg") + "/azucar.jpg");
                Image1.ImageUrl = ("../UsuariosImg/azucar.jpg");
                Label1.Text="La imagen "+ FileUpload1.FileName +" ha cargado correctamente";
               
           }
        }

        protected void BtnCancelar2_click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("inicio.aspx");

        }
        protected void BtnContinuar_Click(object sender,EventArgs e)
        {
            
            Response.Redirect("EleccionFormulario.aspx");
            
        }
    }
}