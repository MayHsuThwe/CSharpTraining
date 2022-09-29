using System;

namespace Calculator
{
    class Calculator
    {
        public static double CalcOperation(int num1, int num2, string sign)
        {
            double result = double.NaN;

            switch (sign)
            {
                case "a":
                    result = num1 + num2;
                    break;
                case "s":
                    result = num1 - num2;
                    break;
                case "m":
                    result = num1 * num2;
                    break;
                case "d":                    
                    if (num2 != 0)
                    {
                        result = num1 / num2;
                    }
                    break;                
                default:
                    break;
            }
            return result;
        }

        public static void Main(string[] args)
        {
            
            int numInput1;
            int numInput2;
            double result = 0;
            
            Console.Write("Type a number, and then press Enter: ");
            numInput1 = Convert.ToInt32(Console.ReadLine());

            Console.Write("Type another number, and then press Enter: ");
            numInput2 = Convert.ToInt32(Console.ReadLine());
            
            Console.WriteLine("Choose an operator from the following list:");
            Console.WriteLine("a - Add");
            Console.WriteLine("s - Subtract");
            Console.WriteLine("m - Multiply");
            Console.WriteLine("d - Divide");
            Console.Write("Your option ? ");
            string sign = Console.ReadLine();
            
            try
            {
                result = CalcOperation(numInput1, numInput2, sign);
                if (double.IsNaN(result))
                {
                    Console.WriteLine("This operation has mathematical error");
                }
                else Console.WriteLine("Your Result : " + numInput1 + " " + sign + " " + numInput2 + " = " + result);
            }
            catch (Exception Ex)
            {
                Console.WriteLine(Ex);
            }            
        }
    }
}