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
    public partial class ControlUs : System.Web.UI.Page

    {          Usuario objUsuario = new Usuario();
       
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
                Grpaseadores.DataSource = objUsuario.OrganizarUsuario();
                Grpaseadores.DataBind();
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

            Grpaseadores.DataSource = objUsuario.OrganizarUsuario();
            Grpaseadores.DataBind();


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
                    int id = int.Parse(Grpaseadores.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                    ConsultarpaseadorResult job = objUsuario.consultarpaseador(id);
                    {
                        ViewState["IDusuario"] = job.Idpaseador.ToString();
                        txtNombre.Text = job.Nombre;
                        txtApellido.Text = job.Apellido;
                        txtTelefono.Text = job.telefono.ToString();
                        txtDireccion.Text = job.barrio;
                        txtCorreo.Text = job.correo;
                        Grpaseadores.Enabled = false;
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
            else if (e.CommandName == "Inactivar")
            {
                try
                {
                    int Id = int.Parse(Grpaseadores.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
                    if (objUsuario.Inactivarpaseador(Id))
                    {
                        Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();
                        LlenarTablaSinMensajes();

                    }

                }
                catch (Exception)
                {
                    Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();


                }

            }
        }

        protected void BTActualizar_Click(object sender, EventArgs e)
        {
            BTActualizar.Visible = true;
            Grpaseadores.Enabled = true;
            int id = int.Parse(ViewState["Idpaseador"].ToString());
            if (objUsuario.ActualizarUsuario(id, txtNombre.Text, txtApellido.Text, int.Parse(txtTelefono.Text), txtCorreo.Text, txtDireccion.Text, TpUsuario.Text))
            {
                Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();
                LlenarTablaSinMensajes();
                LimpiarCampos();
            }
            else
            {
                Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();
            }
        }

        protected void ButBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Grpaseadores.DataSource = objUsuario.BuscarUsuario(Textbuscar.Text);
                Grpaseadores.DataBind();
                Label9.Text = objUsuario.getCodigo() + "-" + objUsuario.getRTA();

            }
            catch (Exception ex)
            {

                Label9.Text = ex.Message;
            }
        }

    }
    }
