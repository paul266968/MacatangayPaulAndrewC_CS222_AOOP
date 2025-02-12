using System;

class alternatingPattern
{
    static void Main()
    {
        Console.Write("Enter the first character: ");
        char first_Char = (Console.ReadLine()[0]);

        Console.Write("Enter the second character: ");
        char second_Char = (Console.ReadLine()[0]);
       
        Console.Write("Enter the size of the pattern: ");
        int size = int.Parse(Console.ReadLine());


        for (int i = 0; i < size; i++)
        {
            for (int j = 0; j < i; j++)
            {
                Console.Write("-");
            }
            char currentChar = (i % 2 == 0) ? first_Char : second_Char;

            for (int j = 0; j < size; j++)
            {
                Console.Write(currentChar + " ");
            }
            Console.WriteLine();
        }
    }
}
