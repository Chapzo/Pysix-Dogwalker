﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
using Negocio;
 
namespace Presentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Usuario Objusuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        { if((Usuarios)Session["Usuario"]!=null)
            { 
                Response.Redirect("Menu.aspx");
                
            }
               
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                string PasswordEncriptado = string.Empty;
                byte[] encryted = System.Text.Encoding.Unicode.GetBytes(txtContrasena.Text);
                PasswordEncriptado = Convert.ToBase64String(encryted);

                Usuarios objUsuario = Objusuario.Login(txtUsuario.Text, PasswordEncriptado);
                MostrarDatosPerfilResult SAUsuario = Objusuario.DatosPerfil(txtUsuario.Text, PasswordEncriptado);


                if (objUsuario != null)
                {
                    Session["Usuario"] = objUsuario;
                    Session["UsuarioID"] = SAUsuario.Idusuario;
                    Session["UsuarioNombre"] = SAUsuario.nombre;
                    Session["UsuarioApellido"] = SAUsuario.apellido;
                    Session["UsuarioCorreo"] = SAUsuario.correo;
                    Session["UsuarioDocumento"] = SAUsuario.documento;
                    Session["UsuarioTipoDoc"] = SAUsuario.tipo_doc;
                    Session["UsuarioLocalidad"] = SAUsuario.localidad;
                    Session["UsuarioTelefono"] = SAUsuario.telefono;
                    Session["UsuarioPassword"] = SAUsuario.contrasena;
                    Session["UsuarioRol"] = SAUsuario.Usu_rol;

                    switch (SAUsuario.Usu_rol)
                    {
                        case 1:
                            Session["UsuarioRol"] = "Paseador";
                            break;

                        case 2:
                            Session["UsuarioRol"] = "Cliente";
                            break;

                        case 3:
                            Session["UsuarioRol"] = "Administrador";

                            
                            break;


                    }

                    Session["UsuarioFotoPerfil"] = SAUsuario.ImgPerfil;

                    string Rol = Convert.ToString(Session["UsuarioRol"]);

                    if (Rol == "Paseador")
                    {
                        MostrarDatosPaseadorResult SAPaseador = Objusuario.DatosPaseador(txtUsuario.Text, PasswordEncriptado);

                        Session["PaseadorID"] = SAPaseador.Idpaseador;

                    }

                    Response.Redirect("Menu.aspx");

                    


                }
                else
                {
                    labelRespuesta.Text = "Usuario o contraseña incorrectos. Por favor verifique los datos." //+ Objusuario.getRTA()
                        ;
                }
            }
            catch (Exception Ex)
            {
                labelRespuesta.Text = Ex.Message;

            }


        }

        protected void btnRegistro_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FormularioRegistro.aspx");
        }
    }
    }
