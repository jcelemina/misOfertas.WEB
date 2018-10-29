using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class Usuarios
    {
        public decimal id { get; set; }
        public string nombre_usuario { get; set; }
        public string apellido_paterno { get; set; }
        public string apellido_materno { get; set; }
        public string rut { get; set; }
        public string estado { get; set; }
        public decimal rol_fk { get; set; }
        public string rol_nombre { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public string correo { get; set; }
        public string contrasena { get; set; }


        public Usuarios(decimal id, string nombre_usuario, string apellido_paterno, string apellido_materno, string rut, string estado, decimal rol_fk, DateTime? fecha, string correo, string contrasena)
        {
            this.id = id;
            this.nombre_usuario = nombre_usuario;
            this.apellido_paterno = apellido_paterno;
            this.apellido_materno = apellido_materno;
            this.rut = rut;
            this.estado = estado;
            this.rol_fk = rol_fk;
            this.fecha = fecha;
            this.correo = correo;
            this.contrasena = contrasena;
        }
        public Usuarios()
        {

        }
        

        public bool ingresar()
        {
            bool ingreso = false;
            try
            {
                CommomBC.entities.addUsuario(nombre_usuario, apellido_paterno, apellido_materno, correo, contrasena, rut, estado, fecha, rol_fk);
                ingreso = true;
            }
            catch (Exception e)
            {

                throw e;
               
            }

            return ingreso;
        }


        //ingreso al sistema  -> login

        public bool Authenticate()
        {
            try
            {
                DAL.USUARIO user = CommomBC.entities.USUARIO.First
                (u => u.CORREO == correo && u.CONTRASENA == contrasena);
                nombre_usuario = user.NOMBRES_USUARIO;
                rol_nombre = user.ROL_USUARIO.NOMBRE;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }





    }
}
