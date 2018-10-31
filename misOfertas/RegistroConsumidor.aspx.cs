using System;
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


            usu.nombre_usuario = txtNombre.Text;
            usu.apellido_paterno = txtApellidoPaterno.Text;
            usu.apellido_materno = txtApellidoMaterno.Text;
            usu.rut = txtRut.Text;
            usu.estado = "Inscrita";
            usu.rol_fk = 1;
            usu.fecha = DateTime.Today;
            usu.correo = txtEmail.Text;
            usu.contrasena = txtpassword.Text;

            bool ingresar = usu.ingresar();


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