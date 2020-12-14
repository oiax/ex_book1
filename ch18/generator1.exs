x = %{a: 1, b: 3, c: 5}

numbers =
  for {_, n} <- x do
    n * 2
  end

IO.inspect(numbers)
