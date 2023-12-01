#include <stdio.h>
#include <stdlib.h>

/* Функция для форматирование полученной строки */
char *form(char buffer[], int n) 
{
   int b = 0,a = 0;
   char *result = calloc(n, sizeof(char));
         for(int c = 0; c <= 255; c++)
         {
            if ( buffer[c] == ':' )
                 ++b;
             if (b == 4)
             {
                 result[a] = buffer[c];
                 ++a; 
             }
             else if (b > 4)
             {
               break;
             }
             
        }
 return result;         
}  
 
int main()
{  
   char buffer [255];// массив для хранения данных из файла
   int find; char login[32] ={0}; int k;// переменные для вводимых (login) и сравниваемых (find) данных
   printf("введите логин: %s\n\n" ,login);
   scanf("%32[^\n]",login);

   FILE *nameUser = fopen("/etc/passwd","r"); //открыть файл
   for (int i=1; fgets(buffer,255,nameUser) != NULL; i++) // перебирает строки из файла и записывает в переменную buffer
   {
      find = strstr(buffer ,login); // поиск строки
      if (find != NULL)
      {
         printf("Найденно в %d строке %s\n",i,form(buffer,32));
      }
   }
   fclose(nameUser);
   return 0;
}
