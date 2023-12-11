using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class JugadorNegocio
    {
        public List<Jugador> listarJugadores()
        {
            List<Jugador> lista = new List<Jugador>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                
                datos.setearConsulta("select * from Jugadores ORDER BY Puntuacion Desc"); //Ordena la puntuación de mayor a menor
                datos.ejecutarLectura();

                //Que el lector solo traiga los 6 primeros
                while (datos.Lector.Read() && lista.Count <= 5)
                {
                    Jugador aux = new Jugador();
                    aux.Nombre = datos.Lector.GetString(0);
                    aux.Puntuacion = datos.Lector.GetInt32(1);

                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void agregarJugador(string nombre, int puntuacion)
        {
            AccesoDatos datos = new AccesoDatos();

            datos.setearConsulta("insert into Jugadores values (@nombre, @puntuacion)");
            datos.setearParametro("@nombre", nombre);
            datos.setearParametro("@puntuacion", puntuacion);
            datos.ejecutarAccion();
        }
    }
}
