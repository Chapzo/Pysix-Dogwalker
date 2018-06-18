using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
  public  class Barrio
    {
        PyxisDataContext data = new PyxisDataContext();

       public List<ListarBarriosResult> ListarBarrios(int localidad)
        {
            try
            {
                List<ListarBarriosResult> objulista = data.ListarBarrios(localidad).ToList();
                return objulista;
            }
            catch (Exception ex)
            {
                return null;
               
            }

            
        }


    }
    
}
