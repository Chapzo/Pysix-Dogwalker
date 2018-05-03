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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {


                    Usuarios objUSuario = objusuario.Login("ilavella7@misena.edu.co","NAAzADIAMQA=");
                    Txtnom.Text = objUSuario.nombre;
                    TxtApe.Text = objUSuario.apellido;
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



                }
            }

        }
    }
}