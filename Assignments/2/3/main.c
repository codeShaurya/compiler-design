// WAP to check whether given oper is valid or not
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void checkOperator(char oper[])
{
  FILE *f;
  f = fopen("symbol.txt", "a+");
  if (strlen(oper) == 0)
    printf("Error! operator cannot be empty\n");

  int i, first = 0;
  char x[100];
  char y[100];
  i = 0;
  while (fscanf(f, "%s %s\n", x, y) != EOF)
  {
    i++;
    if (strcmp(x, oper) == 0)
    {
      if (strcmp(y, "operator") == 0)
        printf("operator found at index %d\n", i);
      else
        printf("Not a valid opertor ,either keyword or identifier\n");
      return;
    }
  }

  printf("operator is invalid!\n");
  fclose(f);
}

int main()
{
  char oper[100];
  while (1)
  {
    printf("Enter a operator : ");
    scanf("%s", oper);
    checkOperator(oper);
  }
  return 0;
}
