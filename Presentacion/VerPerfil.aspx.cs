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
    public partial class VerPerfil : System.Web.UI.Page
    {
        Usuario objusuario = new Usuario();
        Paseador objupase = new Paseador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    
                    Usuarios objUSuario = (Usuarios)Session["Usuario"];
                    
                   Paseadores objUpase =objupase.ObtenerPerfil(objUSuario.Idusuario);
                    Txtdisponibilidad.Text = objUpase.dias;
                    TxtPrec.Text = objUpase.precio.ToString();
                    LblCResul.Text = objUpase.calificacion_prom.ToString();
                    Txtnom.Text = objUSuario.nombre;
                    TxtApe.Text = objUSuario.apellido;
                    ddlHoraInicio.SelectedValue = objUpase.Horainicio.ToString();
                    ddlHoraFin.SelectedValue = objUpase.HoraFin.ToString();
                    LblEsR.Text = objUpase.estado;
                    TxtCorreo.Text = objUSuario.correo;
                    ddlLocalidad.SelectedValue = objUSuario.localidad.ToString();
                    //txtDocumento.Text = objUSuario.tipo_doc;
                    TxtDo.Text = Convert.ToString(objUSuario.documento);
                    TxtTelefono.Text = Convert.ToString(objUSuario.telefono);
                    //txtBarrio.Text = objUSuario.barrio;
                    
                    Txtrol.Enabled = true;
                    if (objUSuario.Usu_rol==1)
                    {
                        TxtPrec.Text = "5";
                    }
                    else
                    {
                        TblPas.Visible = false;
                    }Txtrol.Text = objUSuario.Roles.nombre;
                }
                catch (Exception Ex)
                {
                    Session.Abandon();
                    Response.Redirect("Inicio.aspx");


                }
            }

        }
    }
}