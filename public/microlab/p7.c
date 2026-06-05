#include <lpc214x.h>

int main()
{
    volatile int n, i, fact = 1;

    n = 5;

    for(i = 1; i <= n; ++i)
        fact *= i;

    while(1);
}

/*
#include <lpc214x.h>
#include <stdio.h>

int main()
{
    int n, i;
    unsigned long int fact = 1;

    printf("Enter a number: ");
    scanf("%d", &n);

    for(i = 1; i <= n; i++)
    {
        fact = fact * i;
    }

    printf("Factorial of %d = %lu", n, fact);

    while(1);
}
*/
