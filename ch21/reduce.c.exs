list = [1, 2, 3, 4, 5]
y = Enum.reduce(list, &(&1 * &2))
IO.puts(y)
