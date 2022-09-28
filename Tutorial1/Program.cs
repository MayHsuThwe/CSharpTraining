using System;

public class StarProgram
{
    public static void Main()
    {
        Console.WriteLine("Output");        

        for (int i = 1; i <= 6; i++)
        {
            for (int j = 1; j <= (6 - i); j++)
            {
                Console.Write(" ");
            }
           
            for (int k = 1; k < i * 2; k++)
            {
                Console.Write("*");
            }
            Console.WriteLine();
        }

        for (int i = 6 - 1; i >= 1; i--)
        {
            for (int j = 1; j <= (6 - i); j++)
            {
                Console.Write(" ");
            }
            
            for (int k = 1; k < i * 2; k++)
            {
                Console.Write("*");
            }
            Console.WriteLine();
        }
        Console.WriteLine();
    }
}