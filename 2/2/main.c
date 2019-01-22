// WAP to check whether given keyword is valid or not
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void checkKeyword(char keyword[])
{
  FILE *f;
  f = fopen("symbol.txt", "a+");
  if (strlen(keyword) == 0)
    printf("Error! keyword cannot be empty\n");

  int i, first = 0;
  for (i = 0; i < strlen(keyword); i++)
  {
    if (first == 0)
    {
      if (keyword[i] && keyword[i] < '9' && keyword[i] >= '0')
      {
        printf("Error! Keyword cannot start with numeric values\n");
        return;
      }
    }
    if (keyword[i] && (!(isalnum(keyword[i]) || keyword[i] == '_')))
    {
      printf("Error! Invalid Character\n");
      return;
    }
    if (isalnum(keyword[i]))
      first = 1;
  }

  char x[100];
  char y[100];
  i = 0;
  while (fscanf(f, "%s %s\n", x, y) != EOF)
  {
    i++;
    if (strcmp(x, keyword) == 0)
    {
      if (strcmp(y, "keyword") == 0)
        printf("keyword found at index %d\n", i);
      else
        printf("Not a valid keyword ,either operator or indentifier\n");
      return;
    }
  }

  printf("Keyword is invalid!\n");
  fclose(f);
}

int main()
{
  char keyword[100];
  while (1)
  {
    printf("Enter a keyword : ");
    scanf("%s", keyword);
    checkKeyword(keyword);
  }
  return 0;
}
