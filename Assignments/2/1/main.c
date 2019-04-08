// WAP to check whether given identifier is valid or not
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void checkIdentifier(char identifier[])
{
  FILE *f;
  f = fopen("symbol.txt", "a+");
  if (strlen(identifier) == 0)
    printf("Error! Identifier cannot be empty\n");

  int i, first = 0;
  for (i = 0; i < strlen(identifier); i++)
  {
    if (first == 0)
    {
      if (identifier[i] && identifier[i] < '9' && identifier[i] >= '0')
      {
        printf("Error! Identifier cannot start with numeric values\n");
        return;
      }
    }
    if (identifier[i] && (!(isalnum(identifier[i]) || identifier[i] == '_')))
    {
      printf("Error! Invalid Character\n");
      return;
    }
    if (isalnum(identifier[i]))
      first = 1;
  }

  char x[100];
  char y[100];
  i = 0;
  while (fscanf(f, "%s %s\n", x, y) != EOF)
  {
    i++;
    if (strcmp(x, identifier) == 0)
    {
      if (strcmp(y, "identifier") == 0)
        printf("Identifier found at index %d\n", i);
      else
        printf("Not a valid identifier ,either operator or keyword\n");
      return;
    }
  }

  fprintf(f, "%s %s\n", identifier, "identifier");
  printf("Identifier is valid!\n");
  fclose(f);
}

int main()
{
  char identifier[100];
  while (1)
  {
    printf("Enter a identifier : ");
    scanf("%s", identifier);
    checkIdentifier(identifier);
  }
  return 0;
}
