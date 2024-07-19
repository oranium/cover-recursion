-module(recursion_SUITE).
-export([test_cover/0, test_nocover/0]).

test_cover() ->
  Res = recursion:covered(<<"f\n">>),
  Res == ok.

test_nocover() ->
  Res = recursion:notcovered(<<"f\n">>),
  Res == ok.
