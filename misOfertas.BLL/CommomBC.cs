using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using misOfertas.DAL;

namespace misOfertas.BLL
{
    public  class CommomBC
    {
        private static MisOfertasEDM  _entities;

        public static MisOfertasEDM entities
        {
            get {
                if (_entities == null)
                {
                    _entities = new MisOfertasEDM();
                }
                return _entities; }




            set { entities = value; }
        }


    }
}
