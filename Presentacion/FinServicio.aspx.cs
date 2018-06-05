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
    public partial class FinServicio : System.Web.UI.Page
    {
        Usuario UsuarioFin = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFechaSer.Text = Convert.ToString(Session["SerFecSer"]);
            lblIdUsuario.Text = Convert.ToString(Session["SerFecSer"]);
            lblDetalles.Text = Convert.ToString(Session["SerDetCli"]);
            lblIdPaseador.Text = Convert.ToString(Session["SerIdPas"]);
            lblHoraIni.Text = Convert.ToString(Session["SerHI"]);
            lblHoraFin.Text = Convert.ToString(Session["SerPasHF"]);


           

            string Conversion1 = Convert.ToString(Session["SerIdSer"]);
            int IdServicio = int.Parse(Conversion1);
            lblIdSer.Text = Convert.ToString(IdServicio);

            Variables(IdServicio);
        }

        public void Variables(int IdServicio)
        {
            UsuarioFin.ServicioFin(IdServicio);

        }
        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            UsuarioFin.FinalizarServicio(int.Parse(lblIdSer.Text), txtComentarioPaseador.Text);

            Response.Redirect("Menu.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BandejaDeEntrada.aspx");
        }
    }
}