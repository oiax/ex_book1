x =
  for a <- [0, 1, 2],
      b <- [0, 1, 2],
      c <- [0, 1, 2],
      a >= b and b >= c do
    {a, b, c}
  end

IO.inspect(x)
