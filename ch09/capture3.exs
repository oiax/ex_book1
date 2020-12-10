multiply = &(&1 * &2)
x = is_function(multiply)
y = multiply.(3, 5)
IO.inspect({x, y})
