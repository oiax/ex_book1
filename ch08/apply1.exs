list = [1, 2]
add = fn a, b -> a + b end

[i, j] = list
x = add.(i, j)
IO.inspect(x)
