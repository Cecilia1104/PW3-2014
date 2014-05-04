using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
   public class Cuadrado //Sino dice nada es: internal
    {
        public double Lado { get; set; } //Prop + tecla TAB dos veces

        //O lo que es lo mismo:
        //private double lados;
        //public double Lado
        //{
        //    get { return lados; }
        //    set { lados = value; }
        //}

        public double CalcularSuperficie()
        {
            return Lado * Lado;
        }
    }
}
