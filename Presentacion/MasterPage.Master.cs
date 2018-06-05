using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Convert.ToString(Session["UsuarioNombre"]) + " " + Convert.ToString(Session["UsuarioApellido"]);
            string Rol = Convert.ToString(Session["UsuarioRol"]);
            switch (Rol)
            {
                case "Administrador":
                    btnServicio.Visible = false;
                    btnPendiente.Visible = false;
                    btnHistorial.Visible = false;
                    break;
                case "Cliente":
                    btnPaseadores.Visible = false;
                    btnClientes.Visible = false;
                    btnPendiente.Visible = false;
                    break;
                case "Paseador":
                    btnPaseadores.Visible = false;
                    btnClientes.Visible = false;
                    btnServicio.Visible = false;
                    btnHistorial.Visible = false;
                    break;
            }
            
        }


        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Inicio.aspx");

        }

        protected void btnServicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("PedirServicio.aspx");
        }

        protected void btnClientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlUsxdxd.aspx");
        }

        protected void btnPaseadores_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlUS.aspx");
        }

        protected void btnPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerPerfil.aspx");
        }

        protected void btnPendiente_Click(object sender, EventArgs e)
        {
            Response.Redirect("BandejaDeEntrada.aspx");
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Historial.aspx");
        }
    }
}