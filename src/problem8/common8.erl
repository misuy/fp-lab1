-module(common8).

-export([product_of_n/2]).

product_of_n([Head | Tail], N, Prod) when N > 0 ->
    product_of_n(Tail, N - 1, Prod * Head);
product_of_n(_, _, Prod) ->
    Prod.

product_of_n(List, N) ->
    product_of_n(List, N, 1).
