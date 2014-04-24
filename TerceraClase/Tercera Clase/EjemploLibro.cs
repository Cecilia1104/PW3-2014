using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Tercera_Clase
{
    class EjemploLibro
    {
        static void Main(string[] args)
        {
            string entrada = "";
            int a = 0, b = 0, resultado = 0;
            Console.WriteLine("Escribe tu nombre");
            entrada = Console.ReadLine();
            Console.WriteLine("Hola{0},como estas?", entrada);

            Console.WriteLine("Dame un entero:");
            entrada = Console.ReadLine();
            a = Convert.ToInt32(entrada);

            Console.WriteLine("Dame otro entero");
            entrada = Console.ReadLine();
            b = Convert.ToInt32(entrada);

            resultado = a + b;
            Console.WriteLine("El resultado es:{0}", resultado);
            Console.ReadLine();


        }
    }
}
