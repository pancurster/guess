-module(guess).
-export([main/0]).

loop(false, Score, Answer) ->
    {Result, InfoStr} = (fun() ->
        case io:fread("Guess number I think of:", "~d") of
            {ok, [Guess]} when Guess ==Answer -> {true, "You Win!"};
            {ok, [Guess]} when Guess > Answer -> {false, "Smaller"};
            {ok, [Guess]} when Guess < Answer -> {false, "Bigger"}
        end
    end)(),
    io:format("~s~n", [InfoStr]),
    loop(Result, Score + 1, Answer);
loop(true, Score, _) ->
    io:format("Score:~p~n", [Score]),
    halt().

main() ->
    random:seed(erlang:timestamp()),
    loop(false, 0, random:uniform(100)).

