using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class Campana
    {
        public int id_campana { get; set; }
        public string nombre_campana { get; set; }
        public string descripcion { get; set; }
        public string fecha_inicio { get; set; }
        public string fecha_fin { get; set; }
        public string fecha { get; set; }
        public string estado { get; set; }
        public decimal usuario_fk { get; set; }
        public decimal tienda_fk { get; set; }
        public string nombre_tienda { get; set; }
        public string usuario_nombre { get; set; }

        //nombre campaña, fecha inicio ,fecha fin, tienda

        public Campana()
        {
            this.estado = "Pendiente";
        }

        public Campana(int id_campana, string nombre_campana, string descripcion, string fecha_inicio, string fecha_fin, string fecha, string estado,decimal usuario_fk,decimal tienda_fk)
        {
            this.id_campana = id_campana;
            this.nombre_campana = nombre_campana;
            this.descripcion = descripcion;
            this.fecha_inicio = fecha_inicio;
            this.fecha_fin = fecha_fin;
            this.fecha = fecha;
            this.estado = estado;
            this.usuario_fk = usuario_fk;
            this.tienda_fk = tienda_fk;

        }

        public bool create() {
            try
            {
                CommomBC.entities.spInsertCampana(nombre_campana, descripcion, Convert.ToDateTime(fecha_inicio), Convert.ToDateTime(fecha_fin), Convert.ToDateTime(fecha), estado, usuario_fk, tienda_fk);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<Campana> FindByUser(int id_usuario, string estado)
        {
            List<Campana> campanas = new List<Campana>();
            foreach (var ofert in CommomBC.entities.CAMPANA.Where(em => em.USUARIO_FK == id_usuario && em.ESTADO == estado).ToList())
            {
                Campana campana = new Campana();
                campana.id_campana = (int)ofert.ID_CAMPANA;
                campana.nombre_tienda = ofert.NOMBRE_CAMPANA;
                campana.descripcion = ofert.DESCRIPCION;
                campana.fecha_inicio = ofert.FECHA_INICIO.ToString();
                campana.fecha_fin =  ofert.FECHA_FIN.ToString();
                campana.fecha = ofert.FECHA.ToString();
                campana.estado = ofert.ESTADO;
                campana.usuario_fk = ofert.USUARIO_FK;
                campana.tienda_fk = ofert.TIENDA_FK;
                campana.nombre_tienda = ofert.TIENDA.NOMBRE_TIENDA;
                campana.usuario_nombre = ofert.USUARIO.NOMBRES_USUARIO;
                campanas.Add(campana);
                
            }
            return campanas;

        }


    }
}
