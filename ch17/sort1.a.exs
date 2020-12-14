~w(bob carol alice eve david)
|> Enum.sort(fn a, b -> String.length(a) <= String.length(b) end)
|> IO.inspect()
