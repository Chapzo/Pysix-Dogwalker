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
    public partial class FormularioPaseador : System.Web.UI.Page
    {
       
        Paseador objpaseador = new Paseador();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    Usuarios objUSuario = (Usuarios)Session["Usuario"];
                    


                }
                catch (Exception Ex)
                {
                    Session.Abandon();
                    Response.Redirect("Inicio.aspx");

                }
            }
        }
        protected void btnCrearP_Click(object sender, EventArgs e)
        {
            try
            {
                Usuarios objUSuario = (Usuarios)Session["Usuario"];

                objpaseador.CrearPaseador(objUSuario.Idusuario,txtDisponibilidad.Text,txtExperiencia.Text,txtEspecialidad.Text,float.Parse(txtPrecio.Text),objUSuario.nombre);
                
                

            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EleccionFormulario.aspx");
        }
    }
}