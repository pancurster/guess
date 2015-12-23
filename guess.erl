-module(guess).
-export([main/0]).

check(Guess, Answer) when Guess ==Answer -> {true, "You Win!"};
check(Guess, Answer) when Guess > Answer -> {false, "Smaller"};
check(Guess, Answer) when Guess < Answer -> {false, "Bigger"}.

guess() ->
    {_, [Guess]} = io:fread("Guess number I think of:", "~d"),
    Guess.

loop(Iter, Answer, false) ->
    {Result, InfoStr} = check(guess(), Answer),
    io:format("~s~n", [InfoStr]),
    loop(Iter + 1, Answer, Result);
loop(Iter, _, true) ->
    io:format("Score:~p", [Iter]),
    halt().

main() ->
    random:seed(erlang:timestamp()),
    loop(0, random:uniform(100), false).

