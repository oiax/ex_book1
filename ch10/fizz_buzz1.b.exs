for i <- 1..20 do
  if Integer.mod(i, 15) == 0 do
    IO.puts("Fizz Buzz")
  else if Integer.mod(i, 3) == 0 do
    IO.puts("Fizz")
  else if Integer.mod(i, 5) == 0 do
    IO.puts("Buzz")
  else
    IO.puts(i)
  end
end
