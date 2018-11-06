using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class campana
    {

        public int ID_CAMPANA { get; set; }
        public string NOMBRE_CAMPANA { get; set; }
        public string DESCRIPCION { get; set; }
        public DateTime FECHA_INICIO { get; set; }
        public DateTime FECHA_FIN { get; set; }
        public DateTime FECHA { get; set; }
        public string ESTADO { get; set; }
        public int usuario_fk { get; set; }


        public campana()
        {

        }

        public campana(int id_campana, string nombre_campana, string descripcion,DateTime fecha_inicio, DateTime fecha_fin, string estado, int usuario_fk)
        {
            
            ID_CAMPANA = id_campana;
            NOMBRE_CAMPANA = nombre_campana;
            DESCRIPCION = descripcion;
            FECHA_INICIO = fecha_inicio;
            FECHA_FIN = fecha_fin;
            FECHA = DateTime.Today;
            ESTADO = estado;
            this.usuario_fk = usuario_fk;
        }


        public bool Create()
        {
            bool ingreso = false;
            try
            {
                CommomBC.entities.addCampana(NOMBRE_CAMPANA,DESCRIPCION,FECHA_INICIO,FECHA_FIN,FECHA,ESTADO,usuario_fk);
                ingreso = true;
            }
            catch (Exception ex)
            {

                Console.Write(ex.ToString());

            }

            return ingreso;
        }
        public bool Read()
        {
            try
            {
                DAL.CAMPANA campana = CommomBC.entities.CAMPANA.First(e => e.ID_CAMPANA == ID_CAMPANA);
                ID_CAMPANA = (int)campana.ID_CAMPANA;
                NOMBRE_CAMPANA = campana.NOMBRE_CAMPANA;
                DESCRIPCION = campana.DESCRIPCION;
                FECHA_INICIO = campana.FECHA_INICIO;
                FECHA_FIN = campana.FECHA_FIN;
                FECHA = campana.FECHA;
                ESTADO = campana.ESTADO;
                usuario_fk = (int) campana.USUARIO_FK;
               
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool update()
        {

            bool update = false;
            try
            {
                CommomBC.entities.updateCampan(ID_CAMPANA,NOMBRE_CAMPANA,DESCRIPCION,FECHA_INICIO,FECHA_FIN,FECHA,ESTADO);
                update = true;
            }
            catch (Exception)
            {

                throw;
            }

            return update;
        }
        public int GetId()
        {

            decimal aux;
            try
            {
                aux = listCampana().Max(e => e.ID_CAMPANA);
            }
            catch (Exception)
            {
                aux = 0;
            }

            return (int)aux;
        }
        public List<campana> listCampana()
        {
            List<campana> salida = new List<campana>();
            foreach (DAL.CAMPANA campana in CommomBC.entities.CAMPANA)
            {
                salida.Add(new campana()
                {
                    ID_CAMPANA = (int)campana.ID_CAMPANA,
                    NOMBRE_CAMPANA = campana.NOMBRE_CAMPANA,
                    DESCRIPCION = campana.DESCRIPCION,
                    FECHA_INICIO = campana.FECHA_INICIO,
                    FECHA_FIN = campana.FECHA_FIN,
                    FECHA = campana.FECHA,
                    ESTADO = campana.ESTADO,
                    usuario_fk =(int) campana.USUARIO_FK
                });
             }
            return salida;
        }
        public bool Delete()
        {
            try
            {
                DAL.CAMPANA campana = CommomBC.entities.CAMPANA.First(e => e.ID_CAMPANA == ID_CAMPANA);
                CommomBC.entities.CAMPANA.Remove(campana);
                CommomBC.entities.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


    }
}
