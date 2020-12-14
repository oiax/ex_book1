list = [1, 2, 3, 4, 5]
y = Enum.reduce(list, 1, fn x, acc -> x * acc end)
IO.puts(y)
