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
    public partial class BandejaDeEntrada : System.Web.UI.Page
    {

        Usuario BANUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Convertir = Convert.ToString(Session["PaseadorID"]);
                int ID = int.Parse(Convertir);
                LlenarTabla(ID);
            }

            lblEntrada.Text = Session["UsuarioNombre"] + " " + Session["UsuarioApellido"] + ", esta es tu bandeja de entrada:";

           

           


        }

        public void LlenarTabla(int Id)
        {
            try
            {
                GvBandeja.DataSource = BANUsuario.OrganizarBandeja(Id);
                GvBandeja.DataBind();


            }
            catch (Exception Ex)
            {

            }

        }

        public void RecargarTabla(int Id)
        {
            try
            {
                GvBandeja.DataSource = BANUsuario.OrganizarBandeja(Id);
                GvBandeja.DataBind();


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

            int Id = int.Parse(GvBandeja.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
            


            if (e.CommandName == "PrcAceptar")
            {
                Session["IdServicio"] = Id;
                bool Prueba = BANUsuario.AceptarServicio(Id);

                if (Prueba)
                {

                    RecargarTabla(Id);
                }

                

            }
            else
            if (e.CommandName == "PrcCancelar")
            {
                bool Prueba = BANUsuario.CancelarServicio(Id);
            }

            else if(e.CommandName == "PrcFinalizar")
            {

                int id = int.Parse(GvBandeja.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                ListarServicioResult Pas = BANUsuario.ServicioFin(id);


                Session["SerIdSer"] = Pas.Idservicio;
                Session["SerFecSer"] = Pas.fecha_se.ToString();
                Session["SerIdCli"] = Pas.se_idusuario.ToString();
                Session["SerDetCli"] = Pas.detalles_se.ToString();
                Session["SerIdPas"] = Pas.pa_serv;
                Session["SerHI"] = Pas.HoraIni;
                Session["SerPasHF"] = Pas.HoraFin;
                
                Response.Redirect("FinServicio.aspx");
            }
        }
    }
} 