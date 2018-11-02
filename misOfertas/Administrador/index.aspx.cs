using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using misOfertas.BLL;

namespace misOffertas
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Usuarios usuario = (Usuarios)Session["usuario"];
                if (usuario==null)
                {
                    Response.Redirect("~/login.aspx");
                }
                lblMensaje.Text = "Bienvenido " + usuario.nombre_usuario;
            }
            catch (Exception)
            {

                throw;
            } 
         
        }
    }
}