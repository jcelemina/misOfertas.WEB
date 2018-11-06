using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.AgenteRetail
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            if (usuario == null)
            {
                Response.Redirect("~/login.aspx");
            }
            lblMensaje.Text = "Bienvenido " + usuario.nombre_usuario;


        }
    }
}