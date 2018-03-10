using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using DataBase;

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
                    txtEmail.Text = objUSuario.correo;
                    txtPassword.Text = string.Empty;
                    //txtDocumento.Text = objUSuario.tipo_doc;
                    txtNoDocumento.Text = Convert.ToString(objUSuario.documento);
                    txtTelefono.Text = Convert.ToString(objUSuario.telefono);
                    //txtBarrio.Text = objUSuario.barrio;
                }
                catch (Exception Ex)
                { 
                  
                   

                }
            }
        }

        protected void btnCrearU_Click(object sender, EventArgs e)
        {
            

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

                    objusuario.CrearUsuario(txtNombre.Text, txtApellido.Text, txtPassword.Text, txtEmail.Text, ddlLocalidad.Text, int.Parse(txtTelefono.Text), ddlDocumento.Text, int.Parse(txtNoDocumento.Text));
                    Usuarios objUsuario = objusuario.Login(txtEmail.Text, txtPassword.Text);
                    Session["Usuario"] = objUsuario;
                    Response.Redirect("FormularioPaseador.aspx");
                    Label1.Text = " haz sido creado correctamente Usuario ";
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
    }
}