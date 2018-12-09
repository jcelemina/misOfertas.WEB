using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.AgenteRetail
{
    public partial class AgenteRetail : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                BLL.Usuarios usuario = usuario = (BLL.Usuarios)Session["usuario"];
                lblUsuario.Text = usuario.nombre_usuario.ToString();
                lblusu.Text = usuario.nombre_usuario.ToString();
                lblRol.Text = usuario.rol_nombre.ToString().ToUpper();

            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Session.Abandon();
            Response.Redirect("~/login.aspx");

        }
    }
}