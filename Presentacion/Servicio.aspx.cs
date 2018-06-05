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
    public partial class Servicio : System.Web.UI.Page
    {
        Usuario UsuarioSer = new Usuario();
        Mascota MascotaSer = new Mascota();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            lblIdPa.Text = Convert.ToString(Session["SerIdPas"]);
            lblNombrePa.Text = Convert.ToString(Session["SerPasNom"]);
            lblApellidoPa.Text = Convert.ToString(Session["SerPasApe"]);
            lblZonaPa.Text = Convert.ToString(Session["SerPasLoc"]);
            lblServicioPa.Text = Convert.ToString(Session["SerPasSer"]);

            lblIdCl.Text = Convert.ToString(Session["UsuarioID"]);
            lblNombreCl.Text = Convert.ToString(Session["UsuarioNombre"]);
            lblApellidoCl.Text = Convert.ToString(Session["UsuarioApellido"]);

            lblPrecio.Text = Convert.ToString(Session["SerPasPre"]);

            int IdCl = int.Parse(lblIdCl.Text);
            ddlMascota.DataSource = MascotaSer.ListaMasc(IdCl);

            ddlMascota.DataTextField = "nombre_ma";
            ddlMascota.DataValueField = "Idmascota";
            ddlMascota.DataBind();




        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            UsuarioSer.CrearServicio(txtDetalles.Text, int.Parse(lblIdCl.Text), int.Parse(lblIdPa.Text),
                                    int.Parse(ddlMascota.SelectedValue), int.Parse(ddlHoraInicio.SelectedValue), int.Parse(ddlHoraFin.SelectedValue));

            Response.Redirect("Menu.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PedirServicio.aspx");
        }

        protected void ddlMascota_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}