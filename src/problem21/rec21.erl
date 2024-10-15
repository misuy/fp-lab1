-module(rec21).

-export([solve/1]).

solve(0) ->
    0;
solve(N) ->
    case common21:is_amicable(N) of
        true -> N + solve(N - 1);
        false -> solve(N - 1)
    end.
