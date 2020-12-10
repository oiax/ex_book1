defmodule MyMod do
  def multiply(a, b), do: a * b
end

func = &MyMod.multiply/2
x = is_function(func)
y = func.(3, 5)
IO.inspect({x, y})
