data = <<0x20, 0x01>>
<<x::16-big>> = data
<<y::16-little>> = data
IO.inspect({x, y})
