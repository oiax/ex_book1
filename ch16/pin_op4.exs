x = 3
bits = <<0b1110::4>>

<<^x::size(2), y::1, z::1>> = bits
IO.inspect({y, z})
