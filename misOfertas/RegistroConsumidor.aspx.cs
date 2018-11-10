﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;

namespace misOffertas
{
    public partial class RegistroConsumidor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            BLL.Usuarios usu = new BLL.Usuarios();


            usu.nombre_usuario = txtNombre.Text.ToUpper();
            usu.apellido_paterno = txtApellidoPaterno.Text.ToUpper();
            usu.apellido_materno = txtApellidoMaterno.Text.ToUpper();
            usu.rut = txtRut.Text;
            usu.estado = "Inscrita";
            usu.rol_fk = 2;
            usu.fecha = DateTime.Today;
            usu.correo = txtEmail.Text;
            usu.contrasena = txtpassword.Text;

            if (chkMailList.Checked == true)
            {
                BLL.Usuarios USUA = usu.find(usu.correo, usu.contrasena);
                USUA.insertMailList();
            }

            bool ingresar = usu.create();


            if (ingresar == true)
            {
               
                lblMensaje.Text = "Exito!!, usuario Registrado";
            }
            else
            {


                lblMensaje.Text = "Error!!,Algo paso";

            }



                    
        }

        }
    
}