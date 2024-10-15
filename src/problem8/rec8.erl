-module(rec8).

-export([solve/2]).

solve([Head | Tail], N) ->
    max(common8:product_of_n([Head | Tail], N), solve(Tail, N));
solve(_, _) ->
    0.
