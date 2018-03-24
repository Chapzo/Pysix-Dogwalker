using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;


namespace Negocio
{
    public class Usuario : Respuesta
    {
       public byte[] hola;

        PyxisDataContext data = new PyxisDataContext();

        public List<OrganizarPaseadorResult> Organizarpaseador()
        {
            try
            {
                List<OrganizarPaseadorResult> objlista = data.OrganizarPaseador().ToList();
                setCodigo("ok");
                setRTA("Correcto");
                return objlista;

            }
            catch (Exception ex)
            {
                setCodigo("ERROR");
                setRTA(ex.Message);
                return null;
            }
        }

        public List<OrganizarusuarioResult> OrganizarUsuario()
        {
            try
            {
                List<OrganizarusuarioResult> objlista = data.Organizarusuario().ToList();
                setCodigo("ok");
                setRTA("todo correcto");
                return objlista;

            }
            catch (Exception ex)
            {
                setCodigo("ERROR");
                setRTA(ex.Message);
                return null;
            }
        }
        public List<BuscarUsuarioNResult> BuscarUsuario(string nombre)
        {
            try
            {
                List<BuscarUsuarioNResult> objulista = data.BuscarUsuarioN(nombre).ToList();
                setCodigo("ok");
                setRTA("busqueda efectuada correctamente");
                return objulista;
            }
            catch (Exception ex)
            {
                setCodigo("error");
                setRTA(ex.Message);
                return null;
            }

        }

        public List<buscarpaseadorNResult> BuscarUpaseado(string nombre)
        {
            try
            {
                List<buscarpaseadorNResult> objulista = data.buscarpaseadorN(nombre).ToList();
                setCodigo("ok");
                setRTA("busqueda efectuada correctamente");
                return objulista;
            }
            catch (Exception ex)
            {
                setCodigo("error");
                setRTA(ex.Message);
                return null;
            }

        }

        public Usuarios Login(string correo, string contreseña)
        {
            try
            {
                Usuarios objuUsuario = (from f in data.Usuarios
                                          where f.correo == correo && f.contrasena == contreseña
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
        public bool CrearUsuario(string nombre, string apellido,string contraseña, string correo,int localidades,long telefono,string tipodoc,int documento,byte[]img)
        {
            try
            {
                data.CrearUsuario(nombre, apellido,contraseña, correo, telefono,localidades,documento,tipodoc,img);
                setCodigo ("OK");
                setRTA ("Se ingresó el contacto correctamente");
                return true;
            }
            catch (Exception EX) { 

            
                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }
          
        }
        public bool CrearMascota( int id,string tamaño, string edad, int raza, string nombre)
        {
            try
            {
                data.CrearMascotas(id, tamaño,edad, raza, nombre);
                setCodigo("OK");
                setRTA("Se ingresó el contacto correctamente");
                return true;
            }
            catch (Exception EX)
            {

                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }

        }
        public ConsultarpaseadorResult consultarpaseador(int id)
        {
            try
            {
                ConsultarpaseadorResult job = data.Consultarpaseador(id).FirstOrDefault();
                setCodigo("ok");
                setRTA("se consulto correctamente");
                return job;

            }
            catch (Exception ex)
            {
                setCodigo("ERROR");
                setRTA(ex.Message);
                return null;
            }



        }

        public bool Inactivarpaseador(int id,string estado)
        {
            try
            {
                data.Inactivarpaseador(id,estado);
                setCodigo("ok");
                setRTA("se inactivo correctamente");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }

        }

        public bool ActualizarUsuario(int id, string nombre, string apellido, long telefono, string correo, int localidad, string tiusuario)
        {
            try
            {
                data.ActualizarUsuario(id, nombre, apellido, telefono,localidad ,correo);
                setCodigo("Ok");
                setRTA("ce actualizo el usuario");
                return true;
            }
            catch (Exception ex)
            {
                setCodigo("error");
                setRTA(ex.Message);
                return false;
            }

        }

        public string mostrarimage(int id)
        {
            Usuarios objuUsuario = (from f in data.Usuarios
                                    where f.Idusuario == id 
                                    select f).FirstOrDefault();
            byte[] hola = objuUsuario.ImgPerfil.ToArray();
                
           string imagenvista =  Convert.ToBase64String(hola);
            return imagenvista; 

            
        }

    }

}
