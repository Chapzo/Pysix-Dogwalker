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
    public partial class EleccionFormulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuarios objUSuario = (Usuarios)Session["Usuario"];
                try
                { if (objUSuario.Usu_rol == null)

                        lblPregunta.Text = ("Usuario " + objUSuario.nombre + " ¿Qué tipo de usuario quieres ser?"); 
                
                }
                catch (Exception ex)
                {

                    lblPregunta.Text = ex.Message;
                }
            }
            
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            Table_final.Visible = true;
            Table_Selección.Visible = false;
            Lblinfo.Text = (objUSuario.nombre + (" esta seguro de no continuar con la creacion de su usuario "));
        }
        protected void BtnSi_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();
             Response.Redirect("Inicio.aspx");
        }
        protected void BtnNo_click(object sender, EventArgs e)
        {
            Table_Selección.Visible = true;
            Table_final.Visible = false; 
        }
        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            if (objUSuario.Usu_rol==null)
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {

            Response.Redirect("FormularioRegistro.aspx");
            }
        }
    }
}