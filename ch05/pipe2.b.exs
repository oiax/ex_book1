defmodule MyMod do
  def multiply(x, y) do
    x * y
  end
end

n =
  2
  |> MyMod.multiply(3)
  |> MyMod.multiply(5)
  |> MyMod.multiply(7)

IO.puts(n)
