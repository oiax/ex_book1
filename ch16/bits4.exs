import Helpers

bits = <<0b110::3>>

<<x::1, y::1, z::1>> = bits
IO.inspect({x, y, z})

<<x::2, y::1>> = bits
IO.inspect({x, y})

<<_::1, rest::bits>> = bits
rest |> to_bits() |> IO.inspect()
