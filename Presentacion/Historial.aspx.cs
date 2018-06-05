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
    public partial class Historial : System.Web.UI.Page
    {
        Usuario BANUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Convertir = Convert.ToString(Session["UsuarioID"]);
                int ID = int.Parse(Convertir);
                LlenarTabla(ID);
            }

            lblEntrada.Text = Session["UsuarioNombre"] + " " + Session["UsuarioApellido"] + ", aquí está tu historial de servicios finalizados:";






        }

        public void LlenarTabla(int Id)
        {
            try
            {
                GvHistorial.DataSource = BANUsuario.OrganizarHistorial(Id);
                GvHistorial.DataBind();


            }
            catch (Exception Ex)
            {

            }

        }

        public void RecargarTabla(int Id)
        {
            try
            {
                GvHistorial.DataSource = BANUsuario.OrganizarHistorial(Id);
                GvHistorial.DataBind();


            }
            catch (Exception Ex)
            {

            }

        }


        protected void GvCreado(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }

        protected void GvComandos(object sender, GridViewCommandEventArgs e)
        {

            int Id = int.Parse(GvHistorial.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);



           if(e.CommandName == "PrcCalificar")
            {

                int id = int.Parse(GvHistorial.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                ListarServicioCliResult Pas = BANUsuario.ServicioFinCli(id);


                Session["SerIdSer"] = Pas.Idservicio;
                Session["SerFecSer"] = Pas.fecha_se.ToString();
                Session["SerIdCli"] = Pas.se_idusuario.ToString();
                Session["SerDetCli"] = Pas.detalles_se.ToString();
                Session["SerIdPas"] = Pas.pa_serv;
                Session["SerHI"] = Pas.HoraIni;
                Session["SerPasHF"] = Pas.HoraFin;
                Session["SerComPas"] = Pas.ComentarioPaseador;

                Response.Redirect("FinalizarServicio.aspx");
            }
        }
    }
}