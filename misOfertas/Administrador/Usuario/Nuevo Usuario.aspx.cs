using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using misOfertas.BLL;

namespace misOfertas.Administrador.Usuario
{
    public partial class Nuevo_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            usuario.rut = txtRut.Text;
            usuario.nombre_usuario = txtNombre.Text;
            usuario.apellido_paterno = txtPaterno.Text;
            usuario.apellido_materno = txtMaterno.Text;
            usuario.contrasena = txtPassword.Text;
            usuario.correo = txtCorreo.Text;
            usuario.rol_fk =  Convert.ToDecimal(rol.SelectedValue);
            usuario.estado = "Inscrita";
            bool ingreso = usuario.create();
            if (ingreso==true) {
                lblMensaje.Text = "Exito!! Usuario creado";
            }
            else{
                lblMensaje.Text = "Upps!! Algo paso";
            }

        }
    }
}