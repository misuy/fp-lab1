-module(iterator21).

-export([solve/1]).

it_int_wait(N) ->
    receive
        {From, next} ->
            From ! N;
        destroy ->
            exit(ok);
        _ ->
            exit(unknown_msg)
    end.

it_int_routine(N) ->
    IsAmicable = common21:is_amicable(N),
    case IsAmicable of
        true ->
            it_int_wait(N),
            it_int_routine(N + 1);
        false ->
            it_int_routine(N + 1)
    end.

it_int_routine() ->
    it_int_routine(0).


it_create() ->
    spawn(fun it_int_routine/0).

it_next(It) ->
    It ! {self(), next},
    receive
        Next ->
            Next
    end.

it_destroy(It) ->
    It ! destroy.


solve(It, Acc, Max) ->
    Next = it_next(It),
    case Next of
        Next when Next >= Max ->
            Acc;
        _ ->
            solve(It, Acc + Next, Max)
    end.

solve(N) ->
    It = it_create(),
    Ret = solve(It, 0, N),
    it_destroy(It),
    Ret.
