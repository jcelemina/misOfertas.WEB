using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace misOfertas.BLL
{
    public class Usuarios
    {
        ////crea el objecto para poder encryptar la password
        //MD5CryptoServiceProvider MD5Hasher = new MD5CryptoServiceProvider();
        //// se crea un array de Bytes para poder  usar la encriptacion
        //Byte[] cifrado;
        //// crea un objeto  utf8Encoding que se utilizara para convertir la cadena de contraseña
        //// en una matriz de bytes
        //UTF8Encoding encoder = new UTF8Encoding();
        //// cifrar la contraseña y almacenarla en la matriz de bytes hashedbytes
        


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
            var pass = HashMD5.getMd5Hash(contrasena);
            bool ingreso = false;
            try
            {
                CommomBC.entities.addUsuario(nombre_usuario, apellido_paterno, apellido_materno, correo,pass.ToString(), rut, estado, fecha, rol_fk);
                ingreso = true;
            }
            catch (Exception e)
            {
                throw e;
            }

            return ingreso;
        }

        public bool buscar() {
            return true;

            
            
        }


       



        public string login(string contraseña)
        {

            var conver = HashMD5.verifyMd5Hash(contraseña);
           
            try
            {
                var nombre_rol = new System.Data.Objects.ObjectParameter("nOMBRE_ROL", typeof(string));
                CommomBC.entities.login(correo, conver.ToString(), nombre_rol);
                return Convert.ToString(nombre_rol.Value);
            }
            catch (Exception)
            {

                return null;
            }
           
        }



    }
}
