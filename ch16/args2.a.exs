defmodule MyMod do
  def multiply(list) do
    [a, b] = list
    a * b
  end
end

[3, 5] |> MyMod.multiply() |> IO.puts()
