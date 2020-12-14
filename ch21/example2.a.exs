numbers = [0, 5, 0, 5, 7, 0, 0, 2, 0, 3]

{sum, _} =
  Enum.reduce_while(numbers, {0, nil}, fn
    0, {acc, 0} -> {:halt, {acc, 0}}
    n, {acc, _} -> {:cont, {acc + n, n}}
  end)

IO.inspect(sum)
