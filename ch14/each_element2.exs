m = %{"alice" => 100, "bob" => 101, "carol" => 102}

names =
  for {name, _} <- m do
    name
  end

IO.inspect(names)
