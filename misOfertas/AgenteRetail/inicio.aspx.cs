using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;

namespace misOfertas.AgenteRetail
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            if (usuario.rol_fk != 3)
            {
                Response.Redirect("~/login.aspx");
            }
            if (usuario.estado != "Activo")
            {
                Response.Redirect("~/login.aspx");
            }


            try
            {
              
                BLL.Tienda tienda = new BLL.Tienda();

                gvTiendaActiva.DataSource = tienda.FindByUser((int)usuario.id, "Inscrita");
                gvTiendaActiva.DataBind();

                gvTienda.DataSource = tienda.FindByUser((int)usuario.id,"Pendiente");
                gvTienda.DataBind();

                


                BLL.Campana campana = new BLL.Campana();
                gvCampanaActiva.DataSource = campana.FindByUser((int)usuario.id, "Inscrita");
                gvCampanaActiva.DataBind();

                gvCampanaPendiente.DataSource = campana.FindByUser((int)usuario.id, "Pendiente");
                gvCampanaPendiente.DataBind();

                BLL.Empresa empresa = new BLL.Empresa();
                //ddlEmpresa.DataSource = empresa.FindByEstado("Inscrita");
            }
            catch (Exception ex)
            {
                lblMensaje.Text=ex.ToString();
            }

        }

        protected void btnCrearTienda_Click1(object sender, EventArgs e) {
            string script = @"<script type='text/javascript'>mensaje();</script>";
            string mensajeError = @"<script type='text/javascript'>mensajeError();</script>";

            BLL.Tienda tienda = null;
            BLL.Empresa empresa = new BLL.Empresa();
            empresa.id_empresa = int.Parse(ddlEmpresa.SelectedValue);
            BLL.Usuarios usuario = usuario = (BLL.Usuarios)Session["usuario"];
            
            
                tienda = new BLL.Tienda();
                tienda.nombre_tienda = txtNombreTienda.Text;
                tienda.direccion = TxtDireccion.Text;
                tienda.id_empresa = empresa.id_empresa;
                tienda.id_usuario = (int)usuario.id;

                bool insert = tienda.create();
            
                
            
        }
    }
}