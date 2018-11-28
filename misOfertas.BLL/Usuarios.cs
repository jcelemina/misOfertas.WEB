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
            this.estado = "Activo";
        }


        public bool create()
        {
            var pass = HashMD5.getMd5Hash(contrasena);
            bool ingreso = false;
            try
            {
                CommomBC.entities.Sp_InsertUsuario(nombre_usuario, apellido_paterno, apellido_materno, correo, pass.ToString(), rut, estado, fecha, rol_fk);
                ingreso = true;
            }
            catch (Exception e)
            {
                throw e;
            }

            return ingreso;
        }
        public Usuarios find(string correo, string contraseña)
        {
            Usuarios user = null;

            try
            {
                if (correo != null && contraseña != null)
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
                    user.estado = usuario.ESTADO;
                    user.rol_fk = usuario.ROL_USUARIO_FK;

                }

                return user;

            }
            catch (Exception)
            {

                return null;
            }

        }
        public bool findByEmail()
        {
            bool exist = false;
            try
            {
                

                DAL.USUARIO usuario = CommomBC.entities.USUARIO.FirstOrDefault(em => em.CORREO == correo);


                if (usuario != null)
                {
                    exist = true;
                }

                
            }
            catch (Exception)
            {

                throw;
              
            }
            return exist;

        }
        public int insertMailList(string correo)
        {

            Usuarios user = new Usuarios();
            DAL.USUARIO usuario = CommomBC.entities.USUARIO.First(em => em.CORREO == correo);
            user.id = usuario.ID_USUARIO;


            return CommomBC.entities.sp_InsertMailL("T", user.id);
        }
        public bool findTiendaByIdUser()
        {
            bool exist = false;

            try
            {
                DAL.TIENDA tienda = CommomBC.entities.TIENDA.FirstOrDefault(em => em.USUARIO_FK == id);

                if (tienda != null)
                {

                    exist = true;
                }
            }
            catch (Exception)
            {

                return exist;
            }


            return exist;

        }

           public bool validarRut(string rut)
        {

            bool validacion = false;
            try
            {
                rut = rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                rut = rut.Replace(",", "");
                int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));
                char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                if (dv == (char)(s != 0 ? s + 47 : 75))
                {
                    validacion = true;
                }
            }
            catch (Exception)
            {
            }
            return validacion;
        }

    }


    }
