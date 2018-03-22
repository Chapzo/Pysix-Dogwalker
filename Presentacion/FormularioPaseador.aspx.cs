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
       string dias;
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
                int filesize = FileUpload1.PostedFile.ContentLength;
                byte[] contenido = new byte[filesize];
                FileUpload1.PostedFile.InputStream.Read(contenido, 0, filesize);
                
                foreach(ListItem li in CblDias.Items)
                {
                    if (li.Selected)
                    {
                        dias += li.Value.ToString() + '-';
                       
                    }

                }

                objpaseador.CrearPaseador(objUSuario.Idusuario, txtEspecialidad.Text, float.Parse(txtPrecio.Text), int.Parse(ddlHoraInicio.SelectedValue), int.Parse(ddlHoraFin.SelectedValue),dias, contenido);
                objpaseador.rolselec(objUSuario.Idusuario, 1);
                Label1.Text = "hola";

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