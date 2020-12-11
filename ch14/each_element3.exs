m = %{"alice" => 100, "bob" => 101, "carol" => 102}

numbers =
  for {_, number} <- m do
    number
  end

numbers
|> Enum.sum()
|> IO.puts()
