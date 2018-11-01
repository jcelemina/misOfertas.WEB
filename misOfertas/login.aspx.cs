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
            user.correo = txtUsuario.Text;
            user.contrasena = txtPassword.Text;
            string rol = user.login(user.contrasena);
          

            Session["rol"] = rol;
            if(rol == null){
              lblMensaje.Text = "Usuario o Contraseña incorrecto";
            }else if (rol.Equals("Administrador")) {
              Response.Redirect("Administrador/index.aspx");
            }else if (rol.Equals("Consumidor")) {
              Response.Redirect("Consumidor/index.aspx");
            }

           
            


        }

      
    }
}