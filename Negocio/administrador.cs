using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
    class Administrador:Respuesta
    {
        PyxisDataContext data = new PyxisDataContext();

        public bool Inactivarpaseador(int id,string estado)
        {
            try
            {
                data.Inactivarpaseador(id,estado);
                setCodigo("ok");
                setRTA("Se inactivo correctamente.");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }

        }


    }
   
}
