//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace misOfertas.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class CUPON
    {
        public decimal ID_CUPON { get; set; }
        public decimal TOPE_MAXIMO { get; set; }
        public decimal DESCUENTO { get; set; }
        public System.DateTime FECHA { get; set; }
        public System.DateTime VENCIMIENTO { get; set; }
        public decimal USUARIO_FK { get; set; }
        public decimal TRAMO_FK { get; set; }
        public string CODIGO { get; set; }
        public string CONDICIONES { get; set; }
        public Nullable<decimal> RUBRO_FK { get; set; }
    
        public virtual TRAMO TRAMO { get; set; }
        public virtual USUARIO USUARIO { get; set; }
        public virtual RUBRO RUBRO { get; set; }
    }
}
