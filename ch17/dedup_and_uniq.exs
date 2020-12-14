chars = ~w(a b b c a c c b)

chars
|> Enum.dedup()
|> IO.inspect()

chars
|> Enum.uniq()
|> IO.inspect()
