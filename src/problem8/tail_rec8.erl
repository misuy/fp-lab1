-module(tail_rec8).

-export([solve/2]).

solve([Head | Tail], N, Max) ->
    solve(Tail, N, max(Max, common8:product_of_n([Head | Tail], N)));
solve(_, _, Max) ->
    Max.

solve(List, N) ->
    solve(List, N, 0).
