x = 101

if Integer.mod(x, 2) == 0 do
  y = :even
else
  y = :odd
end

IO.inspect(y)
