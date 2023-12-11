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
    public partial class Juego : System.Web.UI.Page
    {
        public int Intentos { get; set; }
        public int Score { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Intentos"] != null)
                Intentos = (int)(Session["Intentos"]);

            if (Session["score"] != null)
                Score = (int)Session["score"];

            if (!IsPostBack)
            {
                Random rnd = new Random();
                int aleatorio = rnd.Next(0, 14);
                Session.Add("Intentos", 0);
                Intentos = 0;
                Score = 0;
                Session.Add("score", Score);
                btnSiguiente.Visible = false;

                PalabraNegocio negocio = new PalabraNegocio();
                List<Palabra> lista = negocio.ListarPalabras();
                lblPalabra.Text = Helper.Guiones(lista[aleatorio].CantidadLetras);
                Session.Add("PalabraActual", lista[aleatorio].PalabraEnSi);

                int segundos = 90;
                //"segundos" para el temporizador
                Session.Add("segundos", segundos);
                //"SegundosTotales" para actualizar el segundero para la siguiente palabra (con un segundo menos que la anterior).
                Session.Add("SegundosTotales", 90);
                lblTime.Text = string.Format("{0:00}", segundos);
            }

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            // Una función que lea cada caracter de la palabra y que si coincide que el texto del boton te tire true, y que se forme de nuevo la palabra en Load
            // con los guiones pero con las letras (La solución aca esta en el video de coding con C)
            Button Btn_clic = (Button)sender;
            char letra = char.Parse(Btn_clic.Text);
            bool prueba = Helper.ExisteLaLetra(letra, (String)Session["PalabraActual"]);

            if (prueba == true)
            {
                string palabra = (String)Session["PalabraActual"];
                lblPalabra.Text = Helper.PalabraConGuiones(letra, palabra, lblPalabra.Text);
            }

            Btn_clic.Enabled = false;

            if (prueba == false)
            {
                Intentos++;
                Session.Add("Intentos", Intentos);
            }

            if (Intentos == 7)
                Response.Redirect("Resultado.aspx", false);

            // Cuando completa la palabra:
            if (lblPalabra.Text.ToUpper() == (String)Session["PalabraActual"].ToString().ToUpper())
            {
                lblCorrecto.Text = "¡Correcto!";
                //Esto lo hago para que aparezca el timer con el tiempo antes que el usuario toque el boton siguiente palabra.
                //La razon es que hay un segundo de delay en el timer cuando pasa a la siguiente palabra.
                int segundos = (int)Session["SegundosTotales"];
                segundos -= 10;
                lblTime.Text = segundos.ToString();

                btnSiguiente.Visible = true;
                Timer1.Enabled = false;

                //Acumulación de Score
                Session.Add("score", (7 - Intentos));
                Score += (int)Session["score"];
                //Para que se "pise" el score que hay en session
                Session.Add("score", Score);

            }


        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Temporizador
            int segundos = (int)Session["segundos"];

            segundos--;

            lblTime.Text = string.Format("{0:00}", segundos);

            Session.Add("segundos", segundos);

            if (segundos == 0)
            {
                Timer1.Enabled = false;
                Response.Redirect("Resultado.aspx", false);
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            //Nueva palabra
            Random rnd = new Random();
            int aleatorio = rnd.Next(0, 14);
            PalabraNegocio negocio = new PalabraNegocio();
            List<Palabra> lista = negocio.ListarPalabras();
            lblPalabra.Text = Helper.Guiones(lista[aleatorio].CantidadLetras);
            Session.Add("PalabraActual", lista[aleatorio].PalabraEnSi);
            Intentos = 0;
            Session.Add("Intentos", Intentos);
            btnA.Enabled = true; btnB.Enabled = true; btnC.Enabled = true; btnD.Enabled = true; btnE.Enabled = true; btnF.Enabled = true; btnG.Enabled = true; btnH.Enabled = true; btnI.Enabled = true; btnJ.Enabled = true; btnK.Enabled = true; btnL.Enabled = true; btnM.Enabled = true; btnN.Enabled = true; btnO.Enabled = true; btnP.Enabled = true; btnQ.Enabled = true;
            btnR.Enabled = true; btnS.Enabled = true; btnT.Enabled = true; btnU.Enabled = true; btnV.Enabled = true; btnW.Enabled = true; btnX.Enabled = true; btnY.Enabled = true; btnZ.Enabled = true;

            //Actualización del tiempo (1 segundo menos para la nueva palabra)
            int segundos = (int)Session["SegundosTotales"];
            segundos -= 10;
            Session.Add("segundos", segundos);
            Session.Add("SegundosTotales", segundos);

            lblCorrecto.Text = "";
            btnSiguiente.Visible = false;
            Timer1.Enabled = true;
        }
    }
}
