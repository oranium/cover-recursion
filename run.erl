-module(run).
-export([run/0]).

run() ->
  compile:file("recursion.erl"),
  compile:file("recursion_SUITE.erl"),
  cover:start(),
  cover:compile_module(recursion),
  recursion_SUITE:test_cover(),
  recursion_SUITE:test_nocover(),
  cover:analyse_to_file([html]).

