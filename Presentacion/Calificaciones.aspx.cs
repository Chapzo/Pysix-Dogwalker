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
    public partial class Calificaciones : System.Web.UI.Page
    {
        Paseador CaliPas = new Paseador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CalificacionesTabla();
            }
        }

        private void CalificacionesTabla()
        {
            string Convertir = Convert.ToString(Session["Paseador"]);
            int id = int.Parse(Convertir);

            GvServicio.DataSource = CaliPas.ListarCalificaciones(id);
            GvServicio.DataBind();
        }

        protected void GvCreado(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Volver(object sender, EventArgs e)
        {
            Response.Redirect("PerfilPaseador.aspx");
        }
    }
}