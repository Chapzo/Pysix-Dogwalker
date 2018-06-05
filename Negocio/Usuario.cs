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

        private int Id;
        private string Nombre;
        private string Apellido;
        private string Correo;
        private int Documento;
        private string TipoDoc;
        private int Localidad;
        private Int64 Telefono;
        private string Password;
        private int Rol;
        private Image FotoPerfil;
          


       public byte[] hola;

        PyxisDataContext data = new PyxisDataContext();

        public int Id1
        {
            get
            {
                return Id;
            }

            set
            {
                Id = value;
            }
        }

        public string Nombre1
        {
            get
            {
                return Nombre;
            }

            set
            {
                Nombre = value;
            }
        }

        public string Apellido1
        {
            get
            {
                return Apellido;
            }

            set
            {
                Apellido = value;
            }
        }

        public string Correo1
        {
            get
            {
                return Correo;
            }

            set
            {
                Correo = value;
            }
        }

        public int Documento1
        {
            get
            {
                return Documento;
            }

            set
            {
                Documento = value;
            }
        }

        public string TipoDoc1
        {
            get
            {
                return TipoDoc;
            }

            set
            {
                TipoDoc = value;
            }
        }

        public int Localidad1
        {
            get
            {
                return Localidad;
            }

            set
            {
                Localidad = value;
            }
        }

        public long Telefono1
        {
            get
            {
                return Telefono;
            }

            set
            {
                Telefono = value;
            }
        }

        public string Password1
        {
            get
            {
                return Password;
            }

            set
            {
                Password = value;
            }
        }

        public int Rol1
        {
            get
            {
                return Rol;
            }

            set
            {
                Rol = value;
            }
        }

        public Image FotoPerfil1
        {
            get
            {
                return FotoPerfil;
            }

            set
            {
                FotoPerfil = value;
            }
        }

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

        public List<OrganizarBandejaResult> OrganizarBandeja(int Id)
        {
            try
            {
                List<OrganizarBandejaResult> objlista = data.OrganizarBandeja(Id).ToList();
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

        public List<OrganizarHistorialResult> OrganizarHistorial(int Id)
        {
            try
            {
                List<OrganizarHistorialResult> objlista = data.OrganizarHistorial(Id).ToList();
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

        public List<OrganizarServicioResult> organizarServicio()
        {
            try
            {
                List<OrganizarServicioResult> objlista = data.OrganizarServicio().ToList();
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
        public List<buscarResult> BuscarUsuario(string nombre)
        {
            try
            {
                List<buscarResult> objulista = data.buscar(nombre).ToList();
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

        public List<PedirServicioResult> PedirServicio(int localidad, int hora)
        {
            try
            {
                List<PedirServicioResult> objulista = data.PedirServicio(localidad, hora).ToList();
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

        public List<MostrarDatosPerfilResult> MostrarDatosPerfil(string correo, string contrasena)
        {
            try
            {
                List<MostrarDatosPerfilResult> ListaDeDatos = data.MostrarDatosPerfil(correo, contrasena).ToList();
                setCodigo("ok");
                setRTA("busqueda efectuada correctamente");
                return ListaDeDatos;
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

        //public Usuarios SesionActual(string correo, string contreseña)
        //{
        //    try
        //    {
        //        Usuarios SesionUsuario = data.DatosSesion(correo, contreseña);

        //        setCodigo("ok");
        //        setRTA("Se realizo la consulta exitosamente");
        //        return SesionUsuario;
        //    }
        //    catch (Exception Ex)
        //    {
        //        setCodigo("Error");
        //        setRTA(Ex.Message);
        //        return null;

        //    }

        //}
        public bool CrearUsuario(string nombre, string apellido,string contraseña, string correo,int localidades,long telefono,string tipodoc,long documento,byte[]img, string nickname)
        {
            try
            {
                data.CrearUsuario(nombre, apellido,contraseña, correo, telefono,localidades,documento,tipodoc,img, nickname);
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

        public bool CrearServicio(string Detalles, int IdCliente, int IdPaseador, int IdMascota, int HoraIni, int HoraFin)
        {
            try
            {
                data.CrearServicio(Detalles, IdCliente, IdPaseador, IdMascota, HoraIni, HoraFin);
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

        public bool rolselec(int id, int numero)
        {
            try
            {
                data.RolSeleccionador(id, numero);
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

        public ConsultarPaseadorServicioResult ServicioPaseador(int id)
        {
            try
            {
                ConsultarPaseadorServicioResult job = data.ConsultarPaseadorServicio(id).FirstOrDefault();
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

        public ListarServicioResult ServicioFin(int Id)
        {
            try
            {
                ListarServicioResult objlista = data.ListarServicio(Id).FirstOrDefault();
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
        public ListarServicioCliResult ServicioFinCli(int Id)
        {
            try
            {
                ListarServicioCliResult objlista = data.ListarServicioCli(Id).FirstOrDefault();
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

        public MostrarDatosPerfilResult DatosPerfil(string correo, string contrasena)
        {
            try
            {
                MostrarDatosPerfilResult job = data.MostrarDatosPerfil(correo, contrasena).FirstOrDefault();
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


        public MostrarDatosPaseadorResult DatosPaseador(string correo, string contrasena)
        {
            try
            {
                MostrarDatosPaseadorResult job = data.MostrarDatosPaseador(correo, contrasena).FirstOrDefault();
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
                //setCodigo("ok");
                setRTA("El cambio de estado se efectuó correctamente.");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }

        }

        public bool AceptarServicio(int id)
        {
            try
            {
                data.AceptarServicio(id);
                //setCodigo("ok");
                setRTA("El cambio de estado se efectuó correctamente.");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }
        }

        public bool FinalizarServicio(int id, string ComentarioPaseador)
        {
            try
            {
                data.FinalizarServicio(id, ComentarioPaseador);
                //setCodigo("ok");
                setRTA("El cambio de estado se efectuó correctamente.");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }
        }

        public bool FinalizarServicioCli(int id, string ComentarioCliente, int Calificacion)
        {
            try
            {
                data.FinalizarServicioCli(id, ComentarioCliente, Calificacion);
                //setCodigo("ok");
                setRTA("El cambio de estado se efectuó correctamente.");
                return true;

            }
            catch (Exception ex)
            {
                setCodigo("Error");
                setRTA(ex.Message);
                return false;
            }
        }

        public bool CancelarServicio(int id)
        {
            try
            {
                data.RechazarServicio(id);
                //setCodigo("ok");
                setRTA("El cambio de estado se efectuó correctamente.");
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
