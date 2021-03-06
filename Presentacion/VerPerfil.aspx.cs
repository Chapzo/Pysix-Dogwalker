﻿using System;
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

                    if (objUSuario.Usu_rol == 1)
                    {
                        imgPerfil.ImageUrl = ("../UsuariosImg/" + objUSuario.Idusuario + objUSuario.nombre + objUSuario.apellido + ".jpg");
                        TxtPrec.Text = "5";
                        Paseadores objUpase = objupase.ObtenerPerfil(objUSuario.Idusuario);
                        Txtdisponibilidad.Text = objUpase.dias;
                        TxtPrec.Text = objUpase.precio.ToString();
                        LblCResul.Text = objUpase.calificacion_prom.ToString();
                        ddlHoraInicio.SelectedValue = objUpase.Horainicio.ToString();
                        ddlHoraFin.SelectedValue = objUpase.HoraFin.ToString();
                        LblEsR.Text = objUpase.estado;
                        TxtApe.Text = objUpase.Usuarios.apellido;
                        Txtnom.Text = objUpase.Usuarios.nombre;
                        
                    }

                    else
                    {
                        TblPas.Visible = false;
                        imgPerfil.ImageUrl = ("../UsuariosImg/" + objUSuario.Idusuario + objUSuario.nombre + objUSuario.apellido + ".jpg");
                        TxtApe.Text = objUSuario.apellido;
                        TxtCorreo.Text = objUSuario.correo;
                        
                    }

                   
                    
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