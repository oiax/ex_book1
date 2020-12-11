x = ["a", "b", "c"]
[h | _] = x
[_ | t] = x

IO.inspect(h)
IO.inspect(t)
