using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;
using DAL = misOfertas.DAL;

namespace misOffertas
{
    public partial class logina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.USUARIO dal = new DAL.USUARIO();
            BLL.Usuarios user = new BLL.Usuarios();
            user.id = dal.ID_USUARIO; // tiene que ir por el join :)        
            user.correo = txtUsuario.Text;
            user.contrasena = txtPassword.Text;
            string rol = user.login();
            // lblMensaje.Text = rol;

            Session["rol"] = rol;
            lblMensaje.Text = (string)Session["rol"];


            if(rol == null)
            {
                Response.Redirect("login.aspx");
                lblMensaje.Text = (string)Session["rol"];
            }
            else if (rol.Equals("Administrador")) {
                Response.Redirect("Administrador/index.aspx");
            } else if (rol.Equals("consumidor")) {
                Response.Redirect("Consumidor/index.aspx");
            }

           
            


        }

      
    }
}