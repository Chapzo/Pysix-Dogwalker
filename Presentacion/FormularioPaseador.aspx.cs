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

            //if (!IsPostBack)
            //{
            //    try
            //    {
            //        Usuarios objUSuario = (Usuarios)Session["Usuario"];



            //    }
            //    catch (Exception Ex)
            //    {
            //        Session.Abandon();
            //        Response.Redirect("Inicio.aspx");

            //    }
            //}
        }
        protected void BtnCrearP_Click(object sender, EventArgs e)
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

                objpaseador.CrearPaseador(objUSuario.Idusuario, DdlEspecialidad.SelectedValue, float.Parse(txtPrecio.Text), int.Parse(ddlHoraInicio.SelectedValue), int.Parse(ddlHoraFin.SelectedValue),dias, contenido);
                objpaseador.Rolselec(objUSuario.Idusuario, 1);
                Response.Redirect("Menu.aspx");

            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            
        }
        protected void BtnSi_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("Inicio.aspx");
        }
        protected void BtnNo_click(object sender, EventArgs e)
        {
            Table_FormPaseador.Visible = true;
            Table_ConfirmCancelar.Visible = false;
        }
        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            if (objUSuario.Usu_rol == 2)
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {

                Response.Redirect("EleccionFormulario.aspx");
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}