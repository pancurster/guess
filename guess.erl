-module(guess).
-export([main/0]).

guess(Answer) ->
    case io:fread("Guess number I think of:", "~d") of
        {_, [Guess]} when Guess ==Answer -> {true, "You Win!"};
        {_, [Guess]} when Guess > Answer -> {false, "Smaller"};
        {_, [Guess]} when Guess < Answer -> {false, "Bigger"}
    end.

loop(false, Score, Answer) ->
    {Result, InfoStr} = guess(Answer),
    io:format("~s~n", [InfoStr]),
    loop(Result, Score + 1, Answer);
loop(true, Score, _) ->
    io:format("Score:~p~n", [Score]),
    halt().

main() ->
    random:seed(erlang:timestamp()),
    loop(false, 0, random:uniform(100)).

