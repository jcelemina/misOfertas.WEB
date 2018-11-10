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
        private static EntitiesBD  _entities;

        public static EntitiesBD entities
        {
            get {
                if (_entities == null)
                {
                    _entities = new EntitiesBD();
                }
                return _entities; }




            set { entities = value; }
        }


    }
}
