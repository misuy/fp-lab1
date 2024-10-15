-module(test21).

-include_lib("eunit/include/eunit.hrl").

solve(Solve) ->
    N = 10000,
    Correct = 31626,
    Res = Solve(N),
    ?assert(Correct =:= Res).

all_test() ->
    solve(fun rec21:solve/1),
    solve(fun tail_rec21:solve/1),
    solve(fun map_fold21:solve/1),
    solve(fun iterator21:solve/1).
