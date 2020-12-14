x = 101

y =
  if Integer.mod(x, 2) == 0 do
    :even
  else
    :odd
  end

IO.inspect(y)
