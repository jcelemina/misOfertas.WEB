using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;
using misOfertas.DAL;
using misOfertas.BLL;




     

namespace misOfertas
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BLL.Usuarios usu = new BLL.Usuarios();
              
                
                usu.nombre_usuario = txtnombre.Text;
                usu.apellido_paterno = txtpaterno.Text;
                usu.apellido_materno = txtmaterno.Text;
                usu.rut = txtRut.Text;
                usu.estado = "Inscrita";
                usu.rol =  11;
                usu.fecha = DateTime.Today;
                usu.correo= txtCorreo.Text;
                usu.contrasena = txtcontrasena.Text;

                bool ingresar = usu.ingresar();


                if (ingresar == true) {
                  
                    lblMensaje.Text = "Exito!!, usuario Registrado";
                }else
                {

                  
                    lblMensaje.Text = "Error!!,Algo paso";

                }

                   

               
            }
            catch (Exception )
            {

                throw ;
            }
             
        }
    }
}