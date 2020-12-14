data = <<0b0111::4, 0b0001::4, 0b1111::4, 0b0001::4, 0b1100::4>>

flags =
  for <<a::1, b::1, c::1, d::1 <- data>>, b == 1 do
    [a == 1, true, c == 1, d == 1]
  end

IO.inspect(flags)
