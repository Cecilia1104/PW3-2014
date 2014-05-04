using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;

namespace Validaciones
{
    public partial class Geometria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cuadrado miCuadrado = new Cuadrado();

            miCuadrado.Lado = 2.5;
            Label1.Text += "<h3>La superficie del cuadrado es:</h3>";
            Label1.Text += miCuadrado.CalcularSuperficie();
        }
    }
}