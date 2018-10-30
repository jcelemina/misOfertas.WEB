using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;

namespace misOfertas
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DAL.USUARIO dal = new DAL.USUARIO();
            BLL.Usuarios user = new BLL.Usuarios();
            user.id = dal.ID_USUARIO; // tiene que ir por el join :)        
            user.correo = txtEmail.Text; 
            user.contrasena = txtPassword.Text;
            string rol = user.login();
           // lblMensaje.Text = rol;

            Session["rol"] = rol;
            lblMensaje.Text = (string)Session["rol"];

            //switch (rol)
            //{
            //    case "administrador":
                   //Response.Redirect("Home.aspx");
            //    break;
                   //case "Administrador Retail":
                    //Response.Redirect("consumidor.aspx");       
            //    default:
                      //Response.Redirect("login.aspx");
            //    break;
            //}


        }
    }
}