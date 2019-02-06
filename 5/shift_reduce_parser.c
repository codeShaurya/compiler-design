#include <stdio.h>
#include <string.h>
int k = 0, z = 0, i = 0, j = 0, c = 0;
char a[16], ac[20], string1[15], actingString1[10];

void checkForGrammer()
{
  strcpy(ac, "REDUCE TO E");
  for (z = 0; z < c; z++)
    if (string1[z] == '4')
    {
      string1[z] = 'E';

      printf("\n$%s\t%s$\t%s", string1, a, ac);
    }
  for (z = 0; z < c; z++)
    if (string1[z] == '2' && string1[z + 1] == 'E' && string1[z + 2] == '2')
    {
      string1[z] = 'E';
      string1[z + 1] = '\0';
      string1[z + 2] = '\0';
      printf("\n$%s\t%s$\t%s", string1, a, ac);
      i = i - 2;
    }
  for (z = 0; z < c; z++)
    if (string1[z] == '3' && string1[z + 1] == 'E' && string1[z + 2] == '3')
    {
      string1[z] = 'E';
      string1[z + 1] = '\0';
      string1[z + 2] = '\0';
      printf("\n$%s\t%s$\t%s", string1, a, ac);
      i = i - 2;
    }
}

int main()
{
  puts("GRAMMAR is E->2E2 \n E->3E3  \n E->4");
  puts("enter input string ");
  gets(a);
  c = strlen(a);
  strcpy(actingString1, "SHIFT->");
  puts("stack \t input \t actingstring1");
  for (k = 0, i = 0; j < c; k++, i++, j++)
  {
    if (a[j] == '4')
    {
      string1[i] = a[j];

      string1[i + 1] = '\0';
      a[j] = ' ';

      printf("\n$%s\t%s$\t%sid", string1, a, actingString1);
      checkForGrammer();
    }
    else
    {
      string1[i] = a[j];
      string1[i + 1] = '\0';
      a[j] = ' ';
      printf("\n$%s\t%s$\t%ssymbols", string1, a, actingString1);
      checkForGrammer();
    }
  }
}
