kv_pairs = [
  ["name", "Alice"],
  ["score", 100],
  ["confirmed", true]
]

x =
  for [key, value] <- kv_pairs, into: %{} do
    {key, value}
  end

IO.inspect(x)
