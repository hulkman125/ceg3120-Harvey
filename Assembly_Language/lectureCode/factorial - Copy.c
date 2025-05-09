#include <stdio.h>

int factorial(int n);

int main()
{
    int x = 6;
    
    //printf("Type an integer: ");
    //scanf("%d", &x);
	
    int y = factorial(x);
    
    //printf("%d! = %d\n", x, y);
    
    return 0;
}

int factorial(int n)
{
    if (n == 0)
    {
        return 1;
    }
    else
    {
        return n * factorial(n - 1);
    }
}