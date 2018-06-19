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
    public partial class Menu : System.Web.UI.Page
    {
        Usuario SessionUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
           


            lblSaludo.Text = "¡Bienvenido "+Session["UsuarioNombre"]+" a Pyxis Dogwalker!";

            lblNombre.Text = Convert.ToString(Session["UsuarioNombre"]);
            lblApellido.Text = Convert.ToString(Session["UsuarioApellido"]);
            lblCorreo.Text = Convert.ToString(Session["UsuarioCorreo"]);
            lblDocumento.Text = Convert.ToString(Session["UsuarioDocumento"]);
            lblTipoDoc.Text = Convert.ToString(Session["UsuarioTipoDoc"]);
            lblLocalidad.Text = Convert.ToString(Session["UsuarioLocalidad"]);
            lblTelefono.Text = Convert.ToString(Session["UsuarioTelefono"]);

          

            lblRol.Text = Convert.ToString(Session["UsuarioRol"]);

            lblIdPaseador.Text = Convert.ToString(Session["PaseadorID"]);

        }
    }
}