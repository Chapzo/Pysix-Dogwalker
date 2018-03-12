using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
using Negocio;
 
namespace Presentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Usuario Objusuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        { if((Usuarios)Session["Usuario"]!=null)
            { 
                Response.Redirect("Menu.aspx");
                
            }
               
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {

                Usuarios objUsuario = Objusuario.Login(txtUsuario.Text, txtContrasena.Text);

                if (objUsuario != null)
                {
                    Session["Usuario"] = objUsuario;

                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    labelRespuesta.Text = "Usuario o contraseña incorrectos. Por favor verifique los datos." //+ Objusuario.getRTA()
                        ;
                }
            }
            catch (Exception Ex)
            {
                labelRespuesta.Text = Ex.Message;

            }


        }

        protected void btnRegistro_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FormularioRegistro.aspx");
        }
    }
    }
