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
       
        public byte[] imagebyte()
        {
            int length = FileUpload1.PostedFile.ContentLength;
            //create a byte array to store the binary image data    
            byte[] imgbyte = new byte[length];
            //store the currently selected file in memeory    
            //set the binary data    
            FileUpload1.PostedFile.InputStream.Read(imgbyte, 0, length);
            return imgbyte;
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

            byte[] imagen = (byte[])Session["imagen"];

            try
            {
                if (txtNombre.Text != null &&
                    txtApellido.Text != null &&
                    txtPassword.Text != null &&
                    txtPasswordConfirm.Text != null &&
                    txtEmail.Text != null &&
                    ddlLocalidad.Text != null &&
                    txtTelefono.Text != null &&
                    ddlDocumento.Text != null &&
                    txtNoDocumento.Text != null &&
                    txtPassword.Text == txtPasswordConfirm.Text)
                {
                    if (!FileUpload1.HasFile)
                    {
                      if (imagen==null)
                    { int length = FileUpload1.PostedFile.ContentLength;
                       //create a byte array to store the binary image data    
                       byte[] imgbyte= new byte[length];
                       //store the currently selected file in memeory    
                       //set the binary data    
                       FileUpload1.PostedFile.InputStream.Read(imgbyte, 0, length);
                        objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, encriptar(), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, int.Parse(txtNoDocumento.Text),imgbyte);
                        Usuarios objUsuario = objusuario.Login(txtEmail.Text, encriptar());

                        Session["Usuario"] = objUsuario;
                        Label1.Text = " haz sido creado correctamente Usuario ";
                        Response.Redirect("EleccionFormulario.aspx");
                    }
                    else
                    {
                        
                        objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text,encriptar(), txtEmail.Text,int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, int.Parse(txtNoDocumento.Text),imagen);
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, encriptar());

                    Session["Usuario"] = objUsuario;
                    Label1.Text = " haz sido creado correctamente Usuario ";
                            Response.Redirect("EleccionFormulario.aspx");

                        }
                    }
                    else
                    {
                        int length = FileUpload1.PostedFile.ContentLength;
                        //create a byte array to store the binary image data    
                        byte[] imgbyte = new byte[length];
                        //store the currently selected file in memeory    
                        //set the binary data    
                        FileUpload1.PostedFile.InputStream.Read(imgbyte, 0, length);
                        objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, encriptar(), txtEmail.Text, int.Parse(ddlLocalidad.SelectedValue), Int64.Parse(txtTelefono.Text), ddlDocumento.Text, int.Parse(txtNoDocumento.Text), imgbyte);
                        Usuarios objUsuario = objusuario.Login(txtEmail.Text, encriptar());

                        Session["Usuario"] = objUsuario;
                        Label1.Text = " haz sido creado correctamente Usuario ";
                        Response.Redirect("EleccionFormulario.aspx");
                    }






                }
                else
                {                   
                            Label1.Text = "Todos los datos son requeridos. Por favor revise que todo esté correctamente.";
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
                int length = FileUpload1.PostedFile.ContentLength;
                //create a byte array to store the binary image data    
                byte[] imgbyte = new byte[length];
                //store the currently selected file in memeory    
                //set the binary data    
                FileUpload1.PostedFile.InputStream.Read(imgbyte, 0, length);
                                      
                Session["imagen"] = imgbyte;
                FileUpload1.SaveAs(Server.MapPath("img") + "/EmpleadoTemporal.jpg");
                Image1.ImageUrl = ("../img/EmpleadoTemporal.jpg");
                Label1.Text="La imagen"+ FileUpload1.FileName +" ha cargado correctamente";
            }
        }
    }
}