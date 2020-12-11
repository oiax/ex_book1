~w(bob carol alice eve david)
|> Enum.sort(fn a, b ->
  {String.length(a), a} <= {String.length(b), b}
end)
|> IO.inspect()
