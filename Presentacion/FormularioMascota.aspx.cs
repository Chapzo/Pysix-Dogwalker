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
        int perrosCreador;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    Usuarios objUSuario = (Usuarios)Session["Usuario"];
                    if (objUSuario != null )
                    {
                        
                        if ( objUSuario.Usu_rol == null)
                        {
                            Response.Redirect("EleccionFormulario.aspx");
                        }
                       if (objUSuario.Usu_rol != 0 || objUSuario.Usu_rol != 2)
                    {
                               Response.Redirect("Inicio.aspx");
                    }
                    }
                    


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
            FileUpload1.SaveAs(Server.MapPath("Mascotas") + ("/" + objUSuario.Idusuario + objUSuario.nombre +txtNombre.Text + ".jpg"));
            ImagePerro.ImageUrl = ("../Mascotas/azucar.jpg");
            Label1.Text = "La imagen " + FileUpload1.FileName + " ha cargado correctamente";

        }

        protected void btnCrearM_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            try
            {
                if (ddlRaza.Enabled==true)
                {
                    
                    Imagenver();
                    
                    objusuario.CrearMascota (objUSuario.Idusuario ,ddlTamaño.SelectedValue,txtEdad.Text,int.Parse(ddlRaza.SelectedValue),txtNombre.Text );
                    objusuario.Rolselec(objUSuario.Idusuario, 2);
                    objUSuario.Usu_rol = 2;
                    perrosCreador++;
                    //Session.Abandon();
                    //Response.Redirect("Inicio.aspx");
                }
                else
                {
                   
                Imagenver();
                mascota.Crear_Raza(TxtOtro.Text);
                objusuario.CrearMascota (objUSuario.Idusuario ,ddlTamaño.SelectedValue,txtEdad.Text,mascota.RazaNueva(TxtOtro.Text),txtNombre.Text );
                objusuario.Rolselec(objUSuario.Idusuario, 2);
                
                //Response.Redirect("Inicio.aspx");
     
                }
                Table_formMascota.Visible = false;
                Table_ConfirmCancelar.Visible = true;
                Lblinfo.Text =("Usted ha creador a "+ txtNombre.Text +"¿desea crear otra mascota?");
                btnSi.Text = "Si";
                btnNo.Text = "No";
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

        
        protected void BtnSi_Click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            if (perrosCreador==3)
            {
                Lblinfo.Text = "ya ha creado la cantidad maxima cantidad de perros";
                btnSi.Visible = false;
                btnNo.Text = "finalizar";
            }
            if (objUSuario.Usu_rol==2)
            {
                objUSuario.Usu_rol = 0;
                Table_ConfirmCancelar.Visible = false;
                Table_formMascota.Visible = true;
              
                    
            }     

        }
        protected void BtnNo_click(object sender, EventArgs e)
        {
            Usuarios objUSuario = (Usuarios)Session["Usuario"];
            if (objUSuario.Usu_rol==2)
            {
                Session.Abandon();
                Response.Redirect("Inicio.aspx");
            }
           }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
            {
                TxtOtro.Visible = true;
            }
            if (CheckBox1.Checked == false)
            {
                TxtOtro.Visible = false;
                RVRazaTxt.Enabled = false;
            }
        }

        protected void Btnfinalizar_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Inicio.aspx");
        }
    }
}