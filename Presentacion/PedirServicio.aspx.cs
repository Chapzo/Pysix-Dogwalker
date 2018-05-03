using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase;
using Negocio;
namespace Presentacion
{
    public partial class PedirServicio : System.Web.UI.Page
    {
        Usuario PSUsuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTablaPedirServicio();
                
            }

        }

        private void LlenarTablaPedirServicio()
        {

            GvServicio.DataSource = PSUsuario.organizarServicio();
            GvServicio.DataBind();
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void GvCreado(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }

        protected void bntBuscarS_Click(object sender, EventArgs e)
        {
            GvServicio.DataSource = PSUsuario.PedirServicio(int.Parse(ddlLocalidad.SelectedValue), int.Parse(ddlHora.Text));
            GvServicio.DataBind();
        }

        protected void GvAcciones(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "Contratar")
            //{
            //    try
            //    {
                    
            //        int id = int.Parse(GvServicio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
            //        ConsultarpaseadorResult job = PSUsuario.consultarpaseador(id);
            //        {
            //            ViewState["IDusuario"] = job.Idpaseador.ToString();
            //            txtNombre.Text = job.Nombre;
            //            txtApellido.Text = job.Apellido;
            //            txtTelefono.Text = job.telefono.ToString();
            //            txtDireccion.Text = job.localidad.ToString();
            //            txtCorreo.Text = job.correo;
            //            GrUsuarios.Enabled = false;
            //            BTActualizar.Visible = true;


            //        }
            //        Label9.Text = objUsuario.getCodigo() + " - " + objUsuario.getRTA();
            //        TBlCrear.Visible = false;

            //    }
            //    catch (Exception ex)
            //    {

            //        Label9.Text = ex.Message;
            //    }

            }
        }
    }
