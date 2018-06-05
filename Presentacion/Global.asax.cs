using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Presentacion
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            Application["App"] = "Para todos";

        }

        protected void Session_Start(object sender, EventArgs e)
        {


            Session["UsuarioID"] = "ID por defecto ASAX";
            Session["UsuarioNombre"] = "Nombre por defecto ASAX";
            Session["UsuarioApellido"] = "Apellido por defecto ASAX";
            Session["UsuarioCorreo"] = "Correo por defecto ASAX";
            Session["UsuarioDocumento"] = "Documento por defecto ASAX";
            Session["UsuarioTipoDoc"] = "Tipo de documento por defecto ASAX";
            Session["UsuarioLocalidad"] = "Localidad por defecto ASAX";
            Session["UsuarioTelefono"] = "Telefono por defecto ASAX";
            Session["UsuarioPassword"] = "Contraseña por defecto ASAX";
            Session["UsuarioRol"] = "Rol por defecto ASAX";
            Session["UsuarioFotoPerfil"] = "Foto de perfil por defecto ASAX";

            Session["SerIdPas"] = "";
            Session["SerPasNom"] = "";
            Session["SerPasApe"] = "";
            Session["SerPasLoc"] = "";
            Session["SerPasSer"] = "";
            Session["SerPasHI"] = "";
            Session["SerPasHF"] = "";

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}