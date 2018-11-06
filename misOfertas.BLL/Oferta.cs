using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using misOfertas.DAL;
using Oracle.ManagedDataAccess.Client;

namespace misOfertas.BLL
{
    public class Oferta
    {

        public decimal Id_Oferta { get; set; }
        public decimal Cantidad_Minima { get; set; }
        public decimal Cantidad_Maxima { get; set; }
        public decimal Precio_Normal { get; set; }
        public decimal Precio_Oferta { get; set; }
        public string Imagen { get; set; }
        public System.DateTime Fecha { get; set; }
        public decimal Campana_fk { get; set; }
        public decimal Producto_fk { get; set; }

        public Oferta(decimal id_Oferta, decimal cantidad_Minima, decimal cantidad_Maxima, decimal precio_Normal, decimal precio_Oferta, string imagen, DateTime fecha, decimal campana_fk, decimal producto_fk)
        {
            Id_Oferta = id_Oferta;
            Cantidad_Minima = cantidad_Minima;
            Cantidad_Maxima = cantidad_Maxima;
            Precio_Normal = precio_Normal;
            Precio_Oferta = precio_Oferta;
            Imagen = imagen;
            Fecha = fecha;
            Campana_fk = campana_fk;
            Producto_fk = producto_fk;
        }

        public Oferta()
        {

        }

        public List<Oferta> listaOfertas()
        {
            List<Oferta> ofertas = new List<Oferta>();
            foreach (var aux in  CommomBC.entities.OFERTA.ToList())
            {
                Oferta oferta = new Oferta();
                oferta.Id_Oferta = aux.ID_OFERTA;
                oferta.Cantidad_Minima = aux.CANTIDAD_MINIMA;
                oferta.Cantidad_Maxima = aux.CANTIDAD_MAXIMA;
                oferta.Precio_Normal = aux.PRECIO_NORMAL;
                oferta.Precio_Oferta = aux.PRECIO_OFERTA;
                oferta.Imagen = "ftp://usuarioftp:Portafolio2018@18.222.173.173/"+aux.IMAGEN;
                oferta.Fecha = aux.FECHA;
                oferta.Campana_fk = aux.CAMPANA_FK;
                oferta.Producto_fk = aux.PRODUCTO_FK;
                ofertas.Add(oferta);
            }
            return ofertas;
        }



    }
}
