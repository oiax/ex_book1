numbers = [1, 2, 3]

x = []

for n <- numbers do
  x = x ++ [n + 1]
end

IO.inspect(x)
