list = [0, 2, -1, 3, -5, 5]

x =
  Enum.reduce(list, 0, fn n, acc ->
    if n > 0, do: acc + n, else: acc
  end)

IO.inspect(x)
