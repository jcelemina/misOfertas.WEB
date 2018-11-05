using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.Agente_Retail
{
    public partial class RegistroAgenteRetail : System.Web.UI.Page
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
            usu.rol_fk = 3;
            usu.fecha = DateTime.Today;
            usu.correo = txtEmail.Text;
            usu.contrasena = txtpassword.Text;

            if (txtpassword.Text == txtconfirmPassword.Value)
            {


                if (usu.GetEmail() == true)
                {

                    lblMensaje.Text = "Error!!,Correo Existe";

                }
                else
                {
                    try
                    {
                        bool ingresar = usu.create();

                        if (ingresar == true)
                        {
                            lblMensaje.Text = "Exito!!, Usuario Registrado";
                        }
                    }
                    catch (Exception)
                    {

                        lblMensaje.Text = "Error!!,No se pudo Registrar";
                    }

                }


            }
            else {
                lblMensaje.Text = "la contraseña no coinciden";
            }



        }
    }
}