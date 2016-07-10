import std.stdio;
import std.random;

void main()
{
    int answer = uniform(1, 100);
    int guess = -1;
    int score = 0;
    while (answer != guess) {
        write("Guess number i think of:");
        readf("%d\n", &guess);

        if (guess > answer)
            writeln("Too big");
        else if (guess < answer)
            writeln("Too small");

        score += 1;
    }
    writefln("You Win!\nScore: %d", score);
}
