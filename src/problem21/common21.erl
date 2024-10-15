-module(common21).

-export([is_amicable/1]).


sum_of_divisors(_, 0, Sum) ->
    Sum;
sum_of_divisors(N, Div, Sum) when N rem Div == 0 ->
    sum_of_divisors(N, Div - 1, Sum + Div);
sum_of_divisors(N, Div, Sum) ->
    sum_of_divisors(N, Div - 1, Sum).

sum_of_divisors(N) ->
    sum_of_divisors(N, N div 2, 0).


is_amicable(N) ->
    Sum = sum_of_divisors(N),
    N =/= Sum andalso N =:= sum_of_divisors(Sum).
