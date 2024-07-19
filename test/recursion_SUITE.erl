-module(recursion_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").


suite() ->
  [{timetrap, {seconds, 30}}].

init_per_suite(Config) -> Config.

end_per_suite(_Config) -> ok.

init_per_group(_GroupName, Config) -> Config.

end_per_group(_GroupName, _Config) -> ok.

init_per_testcase(_TestCase, Config) -> Config.

end_per_testcase(_TestCase, _Config) -> ok.

groups() -> [].

all() -> [test_cover, test_nocover].

test_cover(_Config) ->
  Res = recursion:covered(<<"f\n">>),
  Res == ok.

test_nocover(_Config) ->
  Res = recursion:notcovered(<<"f\n">>),
  Res == error.
