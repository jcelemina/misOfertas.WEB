using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                lblusuario.Text = usuario.id.ToString();
                BLL.Tienda tienda = new BLL.Tienda();
                gvTienda.DataSource = tienda.FindByUser((int)usuario.id,"Pendiente");
                gvTienda.DataBind();

                gvTiendaActiva.DataSource = tienda.FindByUser((int)usuario.id,"Inscrita");
                gvTiendaActiva.DataBind();


                BLL.Campana campana = new BLL.Campana();
                gvCampanaActiva.DataSource = campana.FindByUser((int)usuario.id, "Inscrita");
                gvCampanaActiva.DataBind();

                //gvCampanaActiva.DataSource = campana.FindByUser((int)usuario.id, "Pendiente");
                //gvCampanaActiva.DataBind();



            }
            catch (Exception ex)
            {

               lblusuario.Text=ex.ToString();
            }

        }
    }
}