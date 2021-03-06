﻿using System;
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
            string mensajeError = @"<script type='text/javascript'>mensajeError();</script>";

            DAL.USUARIO dal = new DAL.USUARIO();
            BLL.Usuarios user = new BLL.Usuarios();        
            user.correo = txtUsuario.Text;
            user.contrasena = txtPassword.Text;
          
             var usuario = user.find(user.correo, user.contrasena);


            if (usuario != null ) {
                Session["usuario"] = usuario;
                switch (usuario.rol_nombre)
                {
                    case "Administrador":
                    Response.Redirect("login.aspx");
                    break;
                    case "Consumidor":
                    Response.Redirect("~/Consumidor/inicio.aspx");
                    break;
                    case "Agente Retail":
                    Response.Redirect("~/AgenteRetail/inicio.aspx");
                    break;
                }
            }else
            {
                Page.RegisterStartupScript("mensajeError", mensajeError);

            }






        }


    }
}