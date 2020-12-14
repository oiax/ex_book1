defmodule MyMod do
  def add(a, b) do
    a + b
  end
end

x = apply(MyMod, :add, [1, 2])
IO.puts(x)
