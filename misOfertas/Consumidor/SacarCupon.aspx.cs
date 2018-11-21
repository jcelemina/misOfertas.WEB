using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.Consumidor
{
    public partial class SacarCupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];

            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }


            lblNombre.Text = usuario.nombre_usuario+ " " + usuario.apellido_parterno;
            

        }
    }
}