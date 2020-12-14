len = 2
bits = <<0b1110::4>>

<<x::size(len), y::1, z::1>> = bits
IO.inspect({x, y, z})
