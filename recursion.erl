-module(recursion).


-export([covered/1, notcovered/1]).

covered(<<"\n", _Message/binary>>) ->
  io:fwrite("Running and covered (exit covered/1)\n"),
  ok;

covered(<<Message/binary>>)->
  io:fwrite("Running and covered (recursion covered/1)\n"),
  <<_Start:1/binary, Rest/binary>> = Message,
  covered(Rest).

notcovered(<<"\n", _Message/binary>>) ->
  io:fwrite("Running and covered (exit notcovered/1)\n"),
  ok;

notcovered(Message) when is_binary(Message)->
    io:fwrite("Running but not covered (recursion notcovered/1)\n"),
    <<_Start:1/binary, Rest/binary>> = Message,
    notcovered(Rest).
