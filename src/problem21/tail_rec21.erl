-module(tail_rec21).

-export([solve/1]).

solve(0, Acc) ->
    Acc;
solve(N, Acc) ->
    case common21:is_amicable(N) of
        true -> solve(N - 1, Acc + N);
        false -> solve(N - 1, Acc)
    end.

solve(N) ->
    solve(N, 0).
