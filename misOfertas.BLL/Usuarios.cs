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
        public decimal id { get; set; }
        public string nombre_usuario { get; set; }
        public string apellido_paterno { get; set; }
        public string apellido_materno { get; set; }
        public string rut { get; set; }
        public string estado { get; set; }
        public decimal rol_fk { get; set; }
        public string rol_nombre { get; set; }
        public DateTime fecha { get; set; }
        public string correo { get; set; }
        public string contrasena { get; set; }


        public Usuarios(decimal id, string nombre_usuario, string apellido_paterno, string apellido_materno, string rut, string estado, decimal rol_fk, DateTime fecha, string correo, string contrasena)
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
        

        public bool create()
        {
            var pass = HashMD5.getMd5Hash(contrasena);
           
            try
            {
                CommomBC.entities.addUsuario(nombre_usuario, apellido_paterno, apellido_materno, correo,pass.ToString(), rut, estado, fecha, rol_fk);
                return true;
            }
            catch (Exception )
            {
                return false;
            }

           
        }
        public Usuarios find(string correo,string contraseña) {
            try
            {
                Usuarios user = null;
                if (correo != null && contrasena != null)
                {

                    var conver = HashMD5.verifyMd5Hash(contraseña).ToString();
                    var nombre_rol = new System.Data.Objects.ObjectParameter("nOMBRE_ROL", typeof(string));
                    CommomBC.entities.login(correo, conver.ToString(), nombre_rol);
                    rol_nombre = Convert.ToString(nombre_rol.Value);

                    user = new Usuarios();
                    DAL.USUARIO usuario = CommomBC.entities.USUARIO.First(em => em.CORREO == correo && em.CONTRASENA == conver);
                    user.id = usuario.ID_USUARIO;
                    user.nombre_usuario = usuario.NOMBRES_USUARIO + " " + usuario.APELLIDO_PATERNO + " " + usuario.APELLIDO_MATERNO;
                    user.correo = usuario.CORREO;
                    user.fecha = usuario.FECHA;
                    user.rol_nombre = rol_nombre;
                }

                return user;
            }
            catch (Exception)
            {

                return null;
            }
        }
        public bool Read()
        {
            try
            {
                DAL.USUARIO usuario = CommomBC.entities.USUARIO.First(e => e.ID_USUARIO == id);
                id = (int)usuario.ID_USUARIO;
                nombre_usuario = usuario.NOMBRES_USUARIO;
                apellido_materno = usuario.APELLIDO_MATERNO;
                apellido_paterno = usuario.APELLIDO_PATERNO;
                rut = usuario.RUT;
                rol_fk = usuario.ROL_USUARIO_FK;
                correo = usuario.CORREO;
                estado = usuario.ESTADO;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool Delete()
        {
            try
            {
                DAL.USUARIO usuario = CommomBC.entities.USUARIO.First(e => e.ID_USUARIO == id);
                CommomBC.entities.USUARIO.Remove(usuario);
                CommomBC.entities.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public int GetId()
        {

            decimal aux;
            try
            {
                aux = listUsuario().Max(e => e.id);
            }
            catch (Exception)
            {
                aux = 0;
            }

            return (int)aux;
        }
        public List<Usuarios> listUsuario()
        {
            List<Usuarios> salida = new List<Usuarios>();
            foreach (DAL.USUARIO usuario in CommomBC.entities.USUARIO)
            {
                salida.Add(new Usuarios()
                {
                    id = (int)usuario.ID_USUARIO,
                    nombre_usuario = usuario.NOMBRES_USUARIO,
                    apellido_paterno = usuario.APELLIDO_PATERNO,
                    apellido_materno = usuario.APELLIDO_MATERNO,
                    rut = usuario.RUT,
                    estado = usuario.ESTADO,
                    rol_fk = usuario.ROL_USUARIO_FK,
                    correo = usuario.CORREO
                    
                });
            }
            return salida;
        }
        public List<BLL.Usuarios> TipoUsuario()
        {
            List<BLL.Usuarios> salida = new List<BLL.Usuarios>();
            foreach (DAL.ROL_USUARIO tipo in CommomBC.entities.ROL_USUARIO)
            {
                salida.Add(new Usuarios()
                {
                    id = tipo.ID_ROL_USUARIO,
                    rol_nombre = tipo.NOMBRE
                });
            }
            return salida;
        }
        public bool GetEmail()
        {



            DAL.USUARIO usuario = CommomBC.entities.USUARIO.FirstOrDefault(e => e.CORREO == correo);
            if (usuario != null)
            {

                return true;

            }
            else {

                return false;
            }

           
        }

    }
}
