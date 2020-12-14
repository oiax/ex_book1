list = [1, 5, 2, 7, 0, 2, 2, 0]

x =
  Enum.reduce_while(list, 0, fn n, acc ->
    if n == 0 do
      {:halt, acc}
    else
      {:cont, acc + n}
    end
  end)

IO.inspect(x)
