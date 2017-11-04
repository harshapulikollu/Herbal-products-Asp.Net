using System;
using System.Web;

namespace Harsha
{
    public class Class1 
    {
        public static string GetRandomId(int length)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string id = string.Empty;
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //For avoiding Repetation of Characters
                if (!id.Contains(chars.GetValue(x).ToString()))
                    id += chars.GetValue(x);
                else
                    i = i - 1;
            }
            return id;
        }
    }
}
