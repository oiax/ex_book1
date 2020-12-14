m = %{"alice" => 100, "bob" => 101, "carol" => 102}

for {name, number} <- m do
  IO.puts("#{name}: #{number}")
end
