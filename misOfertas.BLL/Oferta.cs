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

        public decimal ID_OFERTA { get; set; }
        public decimal CANTIDAD_MINIMA { get; set; }
        public decimal CANTIDAD_MAXIMA { get; set; }
        public decimal PRECIO_NORMAL { get; set; }
        public decimal PRECIO_OFERTA { get; set; }
        public string IMAGEN { get; set; }
        public System.DateTime FECHA { get; set; }
        public decimal CAMPANA_FK { get; set; }
        public decimal PRODUCTO_FK { get; set; }

        public Oferta(decimal iD_OFERTA, decimal cANTIDAD_MINIMA, decimal cANTIDAD_MAXIMA, decimal pRECIO_NORMAL, decimal pRECIO_OFERTA, string iMAGEN, DateTime fECHA, decimal cAMPANA_FK, decimal pRODUCTO_FK)
        {
            ID_OFERTA       = iD_OFERTA;
            CANTIDAD_MINIMA = cANTIDAD_MINIMA;
            CANTIDAD_MAXIMA = cANTIDAD_MAXIMA;
            PRECIO_NORMAL   = pRECIO_NORMAL;
            PRECIO_OFERTA   = pRECIO_OFERTA;
            IMAGEN          = iMAGEN;
            FECHA           = fECHA;
            CAMPANA_FK      = cAMPANA_FK;
            PRODUCTO_FK     = pRODUCTO_FK;
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
                oferta.ID_OFERTA = aux.ID_OFERTA;
                oferta.CANTIDAD_MINIMA = aux.CANTIDAD_MINIMA;
                oferta.CANTIDAD_MAXIMA = aux.CANTIDAD_MAXIMA;
                oferta.PRECIO_NORMAL = aux.PRECIO_NORMAL;
                oferta.PRECIO_OFERTA = aux.PRECIO_OFERTA;
                oferta.IMAGEN = "ftp://usuarioftp:Portafolio2018@18.222.173.173/"+aux.IMAGEN;
                oferta.FECHA = aux.FECHA;
                oferta.CAMPANA_FK = aux.CAMPANA_FK;
                oferta.PRODUCTO_FK = aux.PRODUCTO_FK;
                ofertas.Add(oferta);
            }
            return ofertas;
        }



    }
}
