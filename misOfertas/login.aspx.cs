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
            BLL.Usuarios user = new BLL.Usuarios();
            user.correo = txtEmail.Text; 
            user.contrasena = txtPassword.Text;
            bool respuesta = user.Authenticate();

            if (respuesta == true)
            {
                Session["rol"] = user.rol_nombre;
                lblMensaje.Text = (string) Session["rol"];
            }
            else
            {
                lblMensaje.Text = "Usuario o contraseña incorrecto, intente de nuevo";
            }
           

        }
    }
}