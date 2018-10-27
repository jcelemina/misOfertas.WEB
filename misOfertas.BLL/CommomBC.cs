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
        private static Entities  _entities;

        public static Entities entities
        {
            get {
                if (_entities == null)
                {
                    _entities = new Entities();
                }
                return _entities; }




            set { entities = value; }
        }


    }
}
