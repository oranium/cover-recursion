# Recursion / cover

In this example, cover seems to produce false negatives. Lines 20-22 are marked
as not executed, even though they most certainly do run (`io:fwrite/1` produces output).
The code at `src/recursion.erl` contains two identical functions, `covered/1` and `notcovered/1`.
`covered/1` is flagged as covered upon testing it.
`notcovered/1` only flags the exit clause of the recursive function, however.

## Run

```bash
  # creates the output in recursion.COVER.html
  erlc run.erl && erl -noshell -s run run -s init stop
```

