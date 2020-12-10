defmodule MyMod do
  def multiply(a, b), do: a * b
end

x = MyMod.multiply(3, 5)
IO.puts(x)
