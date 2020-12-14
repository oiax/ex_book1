x = [2, 3, 5]
i = 1

for e <- x do
  i = i * e
  IO.inspect(i)
end

IO.inspect(i)
