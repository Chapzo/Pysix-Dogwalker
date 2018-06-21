using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using DataBase;
using System.IO;

namespace Presentacion
{
    public partial class ControlUS : System.Web.UI.Page
    {
        Usuario objUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTabla();
                TBlCrear.Visible = false;
                BTActualizar.Visible = false;
            }

        }

        public void LlenarTabla()
        {
            try
            {
                GrUsuarios.DataSource = objUsuario.Organizarpaseador();
                GrUsuarios.DataBind();
                Label9.Text = objUsuario.getCodigo() + " - " + objUsuario.getRTA();
                
            }
            catch (Exception Ex)
            {
                Label9.Text = Ex.Message;
            }

        }



        public void LimpiarCampos()
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            Textestado.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            TpUsuario.Text = string.Empty;
        }
        public void LlenarTablaSinMensajes()
        {

            GrUsuarios.DataSource = objUsuario.Organizarpaseador();
            GrUsuarios.DataBind();

           
        }

        protected void Gr_created(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }

        protected void grpa_Comand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                try
                {
                    TBlCrear.Visible = true;
                    int id = int.Parse(GrUsuarios.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                    ConsultarpaseadorResult job = objUsuario.Consultarpaseador(id);
                    {
                        ViewState["IDusuario"] = job.Idpaseador.ToString();
                        txtNombre.Text = job.Nombre;
                        txtApellido.Text = job.Apellido;
                        txtTelefono.Text = job.telefono.ToString();
                        txtDireccion.Text = job.localidad.ToString();
                        txtCorreo.Text = job.correo;
                        GrUsuarios.Enabled = false;
                        BTActualizar.Visible = true;


                    }
                    Label9.Text = objUsuario.getCodigo() + " - " + objUsuario.getRTA();
                    TBlCrear.Visible = false;

                }
                catch (Exception ex)
                {

                    Label9.Text = ex.Message;
                }

            }
            else if (e.CommandName == "Cambio")
            {
                try
                {
                    int Id = int.Parse(GrUsuarios.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                    bool Prueba = objUsuario.Inactivarpaseador(Id, GrUsuarios.Rows[Convert.ToInt32(e.CommandArgument)].Cells[5].Text);

                    Session["Madremiaguilly"] = Id;
                    

                    if (Prueba)
                    {
                        Label9.Text = objUsuario.getCodigo() + objUsuario.getRTA();
                        LlenarTablaSinMensajes();
                        
                    }

                }
                catch (Exception)
                {
                    Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();


                }

            }
            else if (e.CommandName == "ver")
            {
                try
                {
                    int id = int.Parse(GrUsuarios.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                    ConsultarpaseadorResult job = objUsuario.Consultarpaseador(id);
                    ;

                    byte[] ver = null;
                     ver=(job.Experiencia).ToArray();
                    Response.Clear();
                    MemoryStream ms = new MemoryStream(ver);

                    



                
                     Response.ContentType = "application / pdf";
                     Response.AddHeader("content - disposition",   "attachment; filename = Tr.pdf");
                     Response.Buffer = true;
                     ms.WriteTo(Response.OutputStream);
                     Response.End();
                    

                }
                catch (Exception)
                {
                    Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();


                }

            }
        }

        protected void BTActualizar_Click(object sender, EventArgs e)
        {
            
        }

        protected void ButBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                GrUsuarios.DataSource = objUsuario.BuscarUsuario(Textbuscar.Text);
                GrUsuarios.DataBind();
                Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();

            }
            catch (Exception ex)
            {

                Label9.Text = ex.Message;
            }
        }
    }

}