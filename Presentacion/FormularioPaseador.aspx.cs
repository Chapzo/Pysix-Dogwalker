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
                if ((Usuarios)Session["Usuario"] != null)
                {
                    Response.Redirect("Menu.aspx");

                }
            }
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
                Table_ConfirmCancelar.Visible = true;
                Table_FormPaseador.Visible = false;
                Lblinfo.Text = (objUSuario.nombre + "Ya finalizaste la inscripcion , ahora espera a que nuestros administradores confirmen tu informacion que llegara a tu correo");
                btnSi.Text = "Continuar";
                btnNo.Visible = false;

               Paseadores Objupase= objpaseador.ObtenerPerfil(objUSuario.Idusuario);

                Session["Paseador"] = Objupase;
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
         {  
            
            Table_FormPaseador.Visible = false;
            Table_ConfirmCancelar.Visible = true;
        }
        protected void BtnSi_Click(object sender, EventArgs e)
        {
            if ((Paseadores)Session["Paseador"] == null)
            {
             Session.Abandon();
            Response.Redirect("Inicio.aspx");
            }
            else
            {
                Response.Redirect("Inicio.aspx");
            }
            
        }
        protected void BtnNo_click(object sender, EventArgs e)
        {
            Table_FormPaseador.Visible = true;
            Table_ConfirmCancelar.Visible = false;
        }
        protected void BtnRegresar_Click(object sender, EventArgs e)
        {
           
            if ((Paseadores)Session["Paseador"]== null)
            {
                Response.Redirect("EleccionFormulario.aspx");
               
            }
            else
            {
             Response.Redirect("inicio.aspx");
            }
        }

        
    }
}