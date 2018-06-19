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
        Mascota mascota = new Mascota();
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
        public void Imagenver()
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            FileUpload1.SaveAs(Server.MapPath("mascotasImg") + ("/" + objUSuario.Idusuario + objUSuario.nombre +txtNombre.Text + ".jpg"));
            ImagePerro.ImageUrl = ("../Mascotas/azucar.jpg");
            Label1.Text = "La imagen " + FileUpload1.FileName + " ha cargado correctamente";

        }

        protected void btnCrearM_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlRaza.Enabled==true)
                {
                    Usuarios objUSuario = (Usuarios)Session["Usuario"];
                    Imagenver();
                    
                    objusuario.CrearMascota (objUSuario.Idusuario ,ddlTamaño.SelectedValue,txtEdad.Text,int.Parse(ddlRaza.SelectedValue),txtNombre.Text );
                    objusuario.Rolselec(objUSuario.Idusuario, 2);
                    Session.Abandon();
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                   Usuarios objUSuario = (Usuarios)Session["Usuario"];
                Imagenver();
                mascota.Crear_Raza(TxtOtro.Text);
                objusuario.CrearMascota (objUSuario.Idusuario ,ddlTamaño.SelectedValue,txtEdad.Text,3,txtNombre.Text );
                objusuario.Rolselec(objUSuario.Idusuario, 2);
                Session.Abandon();
                Response.Redirect("Inicio.aspx");
     
                }
                
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            
        }

        
        protected void BtnSi_Click(object sender, EventArgs e)
        {
            

        }
        protected void BtnNo_click(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
            {
                TxtOtro.Visible = true;
            }
        }

        protected void Btnfinalizar_Click(object sender, EventArgs e)
        {

        }
    }
}