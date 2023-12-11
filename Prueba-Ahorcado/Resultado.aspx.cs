using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace Prueba_Ahorcado
{
    public partial class Resultado : System.Web.UI.Page
    {
        public int Score { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["score"] != null && !IsPostBack)
            {
                Score = (int)Session["score"];
                lblPalabra.Text = "Perdiste, la palabra era: " + Session["PalabraActual"].ToString().ToUpper();


                //Para que no tenga la posibilidad de poner su nombre si es que no supera a alguno de los jugadores del ranking.
                JugadorNegocio negocio = new JugadorNegocio();
                List<Jugador> listaJugadores = negocio.listarJugadores();
                listaJugadores = listaJugadores.FindAll(x => x.Puntuacion < Score);

                if(listaJugadores.Count == 0)
                {
                    lblNombre.Visible = false;
                    btnAgregar.Visible = false;                  
                    txtNombre.Visible = false;
                }
                else
                {
                    btnVolver.Visible = false;
                }

                dgvRanking.DataSource = negocio.listarJugadores();
                dgvRanking.DataBind();
            }
           
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            JugadorNegocio negocio = new JugadorNegocio();
            
            if(Session["score"] != null && txtNombre.Text != "")
            {
                Score = (int)Session["score"];
                negocio.agregarJugador(txtNombre.Text, Score);
                btnAgregar.Visible = false;
                btnVolver.Visible = true;
                txtNombre.Text = "";
                txtNombre.Visible = false;
                lblNombre.Visible = false;
                dgvRanking.DataSource = negocio.listarJugadores();
                dgvRanking.DataBind();

                Session.Add("score", null);
            }
            else //Por si el usuario recarga la pàgina, no se vuelvan a cargar los botones y las cajas de texto.
            {
                btnVolver.Visible = true;
                btnAgregar.Visible = false;
                lblNombre.Visible = false;
                txtNombre.Visible = false;
                dgvRanking.DataSource = negocio.listarJugadores();
                dgvRanking.DataBind();
            }
        }
    }
}