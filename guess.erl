-module(guess).
-export([main/0]).

check(Guess, Answer) when Guess == Answer ->
    io:format("You Win!~n"),
    true;
check(Guess, Answer) when Guess > Answer ->
    io:format("Smaller~n"),
    false;
check(Guess, Answer) when Guess < Answer ->
    io:format("Bigger~n"),
    false.

guess() ->
    {_, [Guess]} = io:fread("Guess number I think of:", "~d"),
    Guess.

loop(Iter, Answer, false) ->
    loop(Iter + 1, Answer, check(guess(), Answer));
loop(Iter, _, true) ->
    io:format("Score:~p", [Iter]),
    halt().

main() ->
    random:seed(erlang:timestamp()),
    loop(0, random:uniform(100), false).

