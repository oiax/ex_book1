multiply = fn a, b -> a * b end
x = is_function(multiply)
y = multiply.(3, 5)
IO.inspect([x, y])
