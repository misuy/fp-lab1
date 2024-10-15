-module(gen_fold8).

-export([solve/2]).

gen([Head | Tail], N) ->
    [common8:product_of_n([Head | Tail], N) | gen(Tail, N)];
gen(_, _) ->
    [].

solve(List, N) ->
    lists:foldl(fun max/2, 0, gen(List, N)).
