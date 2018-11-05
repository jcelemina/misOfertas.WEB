using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class Oferta
    {

        public int id_oferta { get; set; }
        public int cantidad_minima { get; set; }
        public int cantidad_maxima { get; set; }
        public decimal precio { get; set; }
        public decimal precio_oferta { get; set; }
        public DateTime fecha { get; set; }
        public int campana_fk { get; set; }
        public int producto_fk { get; set; }
        public string imagen { get; set; }

        public Oferta()
        {

        }

        public Oferta(int id_oferta, int cantidad_minima, int cantidad_maxima, decimal precio, decimal precio_oferta, int campana_fk, int producto_fk, string imagen)
        {
            this.id_oferta = id_oferta;
            this.cantidad_minima = cantidad_minima;
            this.cantidad_maxima = cantidad_maxima;
            this.precio = precio;
            this.precio_oferta = precio_oferta;
            this.fecha = DateTime.Today;
            this.campana_fk = campana_fk;
            this.producto_fk = producto_fk;
            this.imagen = imagen;
        }

         public bool Create() {
            bool ingreso = false;
            try
            {
                CommomBC.entities.addOferta(cantidad_minima, cantidad_maxima, precio, precio_oferta, imagen, fecha, campana_fk, producto_fk);
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
                DAL.OFERTA oferta = CommomBC.entities.OFERTA.First(e => e.ID_OFERTA == id_oferta);
                id_oferta = (int)oferta.ID_OFERTA;
                cantidad_maxima = (int)oferta.CANTIDAD_MAXIMA;
                cantidad_minima = (int)oferta.CANTIDAD_MINIMA;
                precio = oferta.PRECIO_NORMAL;
                precio_oferta = oferta.PRECIO_OFERTA;
                fecha = oferta.FECHA;
                campana_fk = (int)oferta.CAMPANA_FK;
                producto_fk = (int)oferta.PRODUCTO_FK;
                imagen = oferta.IMAGEN;


                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool update() {

            bool update = false;
            try
            {
                CommomBC.entities.updateOfert(id_oferta, cantidad_minima, cantidad_maxima, precio, precio_oferta, imagen, fecha, campana_fk, producto_fk);
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
                aux = listOferta().Max(e => e.id_oferta);
            }
            catch (Exception)
            {
                aux = 0;
            }

            return (int)aux;
        }
        public List<Oferta> listOferta()
        {
            List<Oferta> salida = new List<Oferta>();
            foreach (DAL.OFERTA oferta in CommomBC.entities.OFERTA)
            {
                salida.Add(new Oferta()
                {
                    id_oferta = (int)oferta.ID_OFERTA,
                    cantidad_maxima = (int)oferta.CANTIDAD_MAXIMA,
                    cantidad_minima = (int)oferta.CANTIDAD_MINIMA,
                    precio = oferta.PRECIO_NORMAL,
                    precio_oferta = oferta.PRECIO_OFERTA,
                    fecha = oferta.FECHA,
                    campana_fk = (int)oferta.CAMPANA_FK,
                    producto_fk = (int)oferta.PRODUCTO_FK,
                    imagen = oferta.IMAGEN

                });
            }
            return salida;
        }
        public bool Delete()
        {
            try
            {
                DAL.OFERTA oferta = CommomBC.entities.OFERTA.First(e => e.ID_OFERTA == id_oferta);
                CommomBC.entities.OFERTA.Remove(oferta);
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

