#include <stdio.h>
#include <time.h>

int guess(int number_to_guess)
{
    int attempt = 0;
    int x = -1;
    while (scanf("%d", &x)) {
        attempt += 1;
        if (x == number_to_guess)
            return attempt;
        else if (x > number_to_guess)
            printf("Smaller\n");
        else if (x < number_to_guess)
            printf("Bigger\n");
    }
}

int main(int argc, char *argv[])
{
    int number = time(NULL) % 100;
    printf("Guess number I think of\n");
    printf("Your WIN!\nScore:%d",
            guess(number));
    return 0;
}
