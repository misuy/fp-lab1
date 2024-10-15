-module(map_fold21).

-export([solve/1]).

map_fn(N) ->
    case common21:is_amicable(N) of
        true -> N;
        false -> 0
    end.

solve(N) ->
    lists:foldl(fun (X, Acc) -> Acc + X end, 0, lists:map(fun map_fn/1, lists:seq(0, N))).
