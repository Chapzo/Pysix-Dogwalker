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
        Paseador PSPaseador = new Paseador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTablaPedirServicio();

            }

        }

        private void LlenarTablaPedirServicio()
        {

            GvServicio.DataSource = PSUsuario.OrganizarServicio();
            GvServicio.DataBind();
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void GvCreado(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
            
        }

        protected void bntBuscarS_Click(object sender, EventArgs e)
        {
            GvServicio.DataSource = PSUsuario.PedirServicio(int.Parse(ddlLocalidad.SelectedValue), int.Parse(ddlHora.Text));
            GvServicio.DataBind();
        }

        protected void GvAcciones(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Contratar")
            {
                //try
                //{

                    int id = int.Parse(GvServicio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                    ConsultarPaseadorServicioResult Pas = PSUsuario.ServicioPaseador(id);

    
                        Session["SerIdPas"] = Pas.Idpaseador;
                        Session["SerPasNom"] = Pas.Nombre;
                        Session["SerPasApe"] = Pas.Apellido;
                        Session["SerPasLoc"] = Pas.localidad.ToString();
                        Session["SerPasSer"] = "Paseo";
                        Session["SerPasHI"] = Pas.Horainicio;
                        Session["SerPasHF"] = Pas.HoraFin;
                        Session["SerPasPre"] = Pas.precio;


                Response.Redirect("Servicio.aspx");


                //}
                //catch (Exception ex)
                //{
                //    lblText.Text = "Error";

                //}

            }
            else if(e.CommandName == "VerPerfil")
                {

                int id = int.Parse(GvServicio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                Paseadores Datos = PSPaseador.ObtenerPerfil(id);

                Session["PaseadorID"] = Datos.Idpaseador;



                Response.Redirect("PerfilPaseador.aspx");
            }
        }
    }
}
