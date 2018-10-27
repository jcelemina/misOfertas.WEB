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
        public decimal rol { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public string correo { get; set; }
        public string contrasena { get; set; }

        public Usuarios(decimal id, string nombre_usuario, string apellido_paterno, string apellido_materno, string rut, string estado, decimal rol, DateTime? fecha, string correo, string contrasena)
        {
            this.id = id;
            this.nombre_usuario = nombre_usuario;
            this.apellido_paterno = apellido_paterno;
            this.apellido_materno = apellido_materno;
            this.rut = rut;
            this.estado = estado;
            this.rol = rol;
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
                CommomBC.entities.addUsuario(nombre_usuario, apellido_paterno, apellido_materno, correo, contrasena, rut, estado, fecha, rol);
                ingreso = true;
            }
            catch (Exception e)
            {

                throw e;
               
            }

            return ingreso;
        }
    }
}
