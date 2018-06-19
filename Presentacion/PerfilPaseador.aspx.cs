using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using DataBase;

namespace Presentacion
{


    public partial class PerfilPaseador : System.Web.UI.Page
    {
        Paseador PaseadorP = new Paseador();
        Usuario UsuarioP = new Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            string Convertir = Convert.ToString(Session["PaseadorID"]);
            int id = int.Parse(Convertir);

            Paseadores Pas = PaseadorP.ObtenerPerfil(id);

            string Convertir2 = Convert.ToString(Pas.Idpaseador);
            int idpas = int.Parse(Convertir2);

            Session["Paseador"] = Convert.ToString(idpas); 

            CalcularCalificacionPromedioResult Yo = PaseadorP.CaliProm(idpas);

            string Conversion = Convert.ToString(Yo.CalificacionPromedio);
            decimal Calificacion = decimal.Parse(Conversion);

            PaseadorP.InsertarCali(idpas, Calificacion);

            lblCalificacion.Text = Convert.ToString(Yo.CalificacionPromedio);

            lblNickPaseador.Text = Pas.Usuarios.Nickname;

            //imgPaseador (No sé como seria aqui) = Pas.Usuarios.ImgPerfil ;
            lblNombre.Text = Pas.Usuarios.nombre;
            lblApellido.Text = Pas.Usuarios.apellido;
            lblZona.Text = Pas.Usuarios.Localidades.nombre;
            lblTelefono.Text = Convert.ToString(Pas.Usuarios.telefono);
            lblPrecio.Text = Convert.ToString(Pas.precio);
            lblCalificacion.Text = Convert.ToString(Pas.calificacion_prom);



        }

        protected void btnContratar_Click(object sender, EventArgs e)
        {

            string Converte = Convert.ToString(Session["Paseador"]);
            int idpas = int.Parse(Converte);

            ConsultarPaseadorServicioResult Pas = UsuarioP.ServicioPaseador(idpas);


            Session["SerIdPas"] = Pas.Idpaseador;
            Session["SerPasNom"] = Pas.Nombre;
            Session["SerPasApe"] = Pas.Apellido;
            Session["SerPasLoc"] = Pas.localidad.ToString();
            Session["SerPasSer"] = "Paseo";
            Session["SerPasHI"] = Pas.Horainicio;
            Session["SerPasHF"] = Pas.HoraFin;
            Session["SerPasPre"] = Pas.precio;

            Response.Redirect("Servicio.aspx");


        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PedirServicio.aspx");
        }

        protected void btnCalificaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calificaciones.aspx");
        }
    }
}