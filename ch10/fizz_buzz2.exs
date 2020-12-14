for i <- 1..20 do
  cond do
    Integer.mod(i, 15) == 0 -> IO.puts("Fizz Buzz")
    Integer.mod(i, 3) == 0 -> IO.puts("Fizz")
    Integer.mod(i, 5) == 0 -> IO.puts("Buzz")
    true -> IO.puts(i)
  end
end
