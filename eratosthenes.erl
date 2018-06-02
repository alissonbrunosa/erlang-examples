-module(eratosthenes).
-export([sieve/1]).

sieve(Max) ->
  calc(lists:seq(2, Max)).

calc([]) ->
  [];
calc([Prime | Rest]) ->
  [Prime | calc([N || N <- Rest, N rem Prime /= 0])].
