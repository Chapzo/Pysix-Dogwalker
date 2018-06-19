using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
    public class Paseador : Respuesta
    {

        PyxisDataContext data = new PyxisDataContext();

        public Paseadores ObtenerPerfil(int Idusu)
        {



            try
            {
                Paseadores objuUsuario = (from f in data.Paseadores
                                        where f.pa_idusu == Idusu
                                        select f).FirstOrDefault();
                setCodigo("ok");
                setRTA("se realizo la consulta exitosamente");
                return objuUsuario;
            }
            catch (Exception Ex)
            {
                setCodigo("Error");
                setRTA(Ex.Message);
                return null;

            }

        }
        public bool CrearPaseador(int id,  string especialidad, float precio, int HoraIni, int HoraFin, string Dias, byte[] pdf)
        {
            try
            {
                data.Crearpaseador(id, pdf,  especialidad,precio,  HoraIni, HoraFin, Dias);
                setCodigo("ok");
                setRTA("Muchas gracias "+", ahora eres uno de nuestros paseadores");
                return true;
            }
            catch (Exception EX)
            {

                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }

        
        }
        public bool Rolselec(int id, int numero)
        {
            try
            {
                data.RolSeleccionador(id,numero);
                setCodigo("ok");
                 return true;
            }
            catch (Exception EX)
            {

                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }


        }
        public List<CalcularCalificacionPromedioResult> CalificacionProm(int id)
        {
            List<CalcularCalificacionPromedioResult> ListaDeDatos = data.CalcularCalificacionPromedio(id).ToList();
            return ListaDeDatos;
        }
        public CalcularCalificacionPromedioResult CaliProm(int id)
        {
            CalcularCalificacionPromedioResult job = data.CalcularCalificacionPromedio(id).FirstOrDefault();
            return job;
        }

        public bool InsertarCali(int id, decimal Calificacion)
        {
            data.AnadirCalificacionPromedio(id, Calificacion);
            return true;
        }
    }
}
    
