using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class Tienda
    {
        public int id_tienda { get; set; }
        public string nombre_tienda { get; set; }
        public string direccion { get; set; }
        public string estado { get; set; }
        public int id_empresa { get; set; }
        public int id_usuario { get; set; }
        public Tienda()
        {
            this.estado = "Pendiente";
        }
        public Tienda(int id_tienda,string nombre_tienda,string direccion, string estado, int id_empresa, int id_usuario)
        {
            this.id_tienda = id_tienda;
            this.nombre_tienda = nombre_tienda;
            this.direccion = direccion;
            this.estado = estado;
            this.id_empresa = id_empresa;
            this.id_usuario = id_usuario;

        }

        public bool create()
        {
            try
            {
                CommomBC.entities.addTienda(nombre_tienda, direccion, estado, id_empresa, id_usuario);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool findById()
        {
            bool exist = false;
            DAL.TIENDA tienda = CommomBC.entities.TIENDA.FirstOrDefault(em => em.ID_TIENDA == id_tienda);
            if (tienda != null)
            {
                exist = true;
            }

            return exist;
        }


        public bool findByStoreAndUser()
        {
            bool exist = false;
            Empresa empresa = new Empresa();
            DAL.TIENDA tienda = CommomBC.entities.TIENDA.FirstOrDefault(em => em.EMPRESA_FK == id_empresa && em.USUARIO_FK == id_usuario);
            if (tienda != null)
            {
                exist = true;
            }

            return exist;
        }

    }
}
