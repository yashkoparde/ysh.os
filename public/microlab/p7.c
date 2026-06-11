//Factorial of Number
#include <lpc214x.h>

int main(void)
{
    volatile int i, n;
    int fact = 1;
    n = 5;                      // Initialize number
    for (i = 1; i <= n; i++)
    {
        fact = fact * i;        // Compute factorial
    }
    while (1);                  // Infinite loop

    return 0;
}
