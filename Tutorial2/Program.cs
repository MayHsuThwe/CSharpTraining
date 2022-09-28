using System;
public class CenturyAndLeap
{
    public static void GetCenturyAndCheckLeapYear(int year)
    {
        if (year <= 0)
            Console.WriteLine("0 And Negative Not Allow");

        else if (year <= 100)
        {
            int leapYear = year;
            leapYear = Convert.ToInt32((((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? " 1 " : " -1 ");
            Console.WriteLine("1st Century" + "," + leapYear );
        }             

        else if (year % 100 == 0)
        {
            int leapYear =year;
            leapYear = Convert.ToInt32((((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? " 1 " : " -1 ");
            Console.WriteLine(year / 100 + "," + leapYear);
        }

        else
        {
            int leapYear = year;
            leapYear = Convert.ToInt32((((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? " 1 " : " -1 ");
            Console.WriteLine(year / 100 + 1 + "," + leapYear);
        }            
    }    

    public static void Main()
    {        

        Console.WriteLine("Example");
        Console.Write("Input Year : ");
        int year = Convert.ToInt32(Console.ReadLine());
        GetCenturyAndCheckLeapYear(year);
    }
}
 
