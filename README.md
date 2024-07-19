# Recursion / cover

In this example, cover seems to produce false negatives. Lines 20-22 are marked
as not executed, even though they most certainly do run (`ct:print/1` produces output).
The code at `src/recursion.erl` contains two identical functions, `covered/1` and `notcovered/1`.
`covered/1` is flagged as covered upon testing it.
`notcovered/1` only flags the exit clause of the recursive function, however.

## Run

```bash
    # run the tests in verbose mode to show that code is running
    $ rebar3 ct --cover --verbose
    # create coverage report
    $ rebar3 cover
```
