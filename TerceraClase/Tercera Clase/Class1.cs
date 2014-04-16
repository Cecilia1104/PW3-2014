using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Tercera_Clase
{
    class Class1
    {
        //Ejemplo 3:
        /*enum Dias{
            Domingo,
            Lunes,
            Martes,
            Miercoles,
            Jueves,
            Viernes,
            Sabado
        }*/
        static void Main(string[] args)
        {
            //Ejemplo 3:
            /* Dias dia = Dias.Domingo;
            Console.WriteLine(dia);
            Console.ReadLine();*/


            //Ejemplo 4 - Uso de Convert, Parse y TryParse:
            short x;
            int y;
            string z = "10";
            y = Convert.ToInt32(z);
            x = short.Parse(y.ToString());
            Console.WriteLine(short.TryParse(y.ToString(), out x));
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.ReadLine();

            //Ejemplo 5:
            /*string Mensaje = "Llegas tarde = horno";

            foreach (char caracter in Mensaje)
            {
                Console.WriteLine(caracter);
            }
            Console.ReadLine();*/
        }
    }
}