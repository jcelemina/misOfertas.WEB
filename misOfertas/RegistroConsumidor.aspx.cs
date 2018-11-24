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
            string script = @"<script type='text/javascript'>mensaje();</script>";
            string scriptRequired = @"<script type='text/javascript'>mensajeRequired();</script>";
            string scriptUsuarioExistente = @"<script type='text/javascript'>UsuarioExistente();</script>";
            string VerifyequalsPass = @"<script type='text/javascript'>VerifyequalsPass();</script>";

            BLL.Usuarios usu = new BLL.Usuarios();

            if (txtpassword.Text == txtconfirmPassword.Value)
            {

                if (txtNombre.Text == "" || txtRut.Text == "" || txtApellidoPaterno.Text == "" || txtApellidoMaterno.Text == "" || txtEmail.Text == "" || txtpassword.Text == "" || txtconfirmPassword.Value == "")
                {
                    Page.RegisterStartupScript("mensaje", scriptRequired); 
                }
                else
                {

                    usu.nombre_usuario = txtNombre.Text.ToUpper();
                    usu.apellido_paterno = txtApellidoPaterno.Text.ToUpper();
                    usu.apellido_materno = txtApellidoMaterno.Text.ToUpper();
                    usu.rut = txtRut.Text;
                    usu.estado = "Activo";
                    usu.rol_fk = 2;
                    usu.fecha = DateTime.Today;
                    usu.correo = txtEmail.Text;
                    usu.contrasena = txtpassword.Text;
                    int mailList = 0;

                    if (usu.findByEmail())
                    {
                        Page.RegisterStartupScript("mensaje", scriptUsuarioExistente);
                    }
                    else
                    {
                        if (usu.create() == true)
                        {

                            if (chkMailList.Checked == true)
                            {
                                mailList = usu.insertMailList(usu.correo);
                                Page.RegisterStartupScript("mensaje", script);
                            }

                            Page.RegisterStartupScript("mensaje", script);
                        }

                    }

                }
            }
            else {

                Page.RegisterStartupScript("mensaje", VerifyequalsPass); 
            }

            
            


        



        }

        }
    
}