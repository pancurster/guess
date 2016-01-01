#!/usr/bin/env perl6

my $guess;
my $score=1;
my $answer = (1..100).pick;
until $answer == ($guess = prompt("Guess number I think of: ")) {
    if $guess > $answer {
        say "Too BIG";
    } else {
        say "Too SMALL";
    }
    $score += 1;
}
say "You WIN!";
say "Score $score";
