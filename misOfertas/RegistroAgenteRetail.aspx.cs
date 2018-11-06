using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas
{
    public partial class RegistroAgenteRetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == txtconfirmPassword.Value)
            {
                BLL.Usuarios usu = new BLL.Usuarios();
                usu.nombre_usuario = txtNombre.Text.ToUpper();
                usu.apellido_paterno = txtApellidoPaterno.Text.ToUpper();
                usu.apellido_materno = txtApellidoMaterno.Text.ToUpper();
                usu.rut = txtRut.Text;
                usu.estado = "Pendiente";
                usu.rol_fk = 3;
                usu.fecha = DateTime.Today;
                usu.correo = txtEmail.Text;
                usu.contrasena = txtpassword.Text;

                if (usu.findByEmail())
                {
                    lblMensaje.Text = "Usuario existente";
                }
                else
                {
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
            else
            {
                lblMensaje.Text = "contraseña ingresada no coinciden!!!";
            }
        }
    }
}