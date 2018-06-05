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
    public partial class FormularioMascota : System.Web.UI.Page
    {
        Usuario objusuario = new Usuario();
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

        protected void btnCrearM_Click(object sender, EventArgs e)
        {
            try
            {
                Usuarios objUSuario = (Usuarios)Session["Usuario"];
                //objusuario.CrearMascota (objUSuario.Idusuario ,ddlTamaño.SelectedValue,txtEdad.Text,int.Parse(ddlRaza.SelectedValue),txtNombre.Text );
                objusuario.rolselec(objUSuario.Idusuario, 2);
                Session.Abandon();
                Response.Redirect("Inicio.aspx");

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