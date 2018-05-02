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
    public partial class PedirServicio : System.Web.UI.Page
    {
        Usuario PSUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTablaPedirServicio();
            }

        }

        private void LlenarTablaPedirServicio()
        {

            GvServicio.DataSource = PSUsuario.organizarServicio();
            GvServicio.DataBind();
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void bntBuscarS_Click(object sender, EventArgs e)
        {
            GvServicio.DataSource = PSUsuario.PedirServicio(int.Parse(ddlLocalidad.SelectedValue), int.Parse(ddlHora.Text));
            GvServicio.DataBind();
        }
    }
}