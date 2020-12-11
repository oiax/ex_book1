for i <- 1..20 do
  v =
    cond do
      Integer.mod(i, 15) == 0 -> "Fizz Buzz"
      Integer.mod(i, 3) == 0 -> "Fizz"
      Integer.mod(i, 5) == 0 -> "Buzz"
      true -> i
    end

  IO.puts v
end
