x = 2
double = fn a -> a * x end
y = double.(3)
IO.inspect(y)

x = 3
y = double.(3)
IO.inspect(y)
