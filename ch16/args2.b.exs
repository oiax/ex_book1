defmodule MyMod do
  def multiply([a, b]) do
    a * b
  end
end

[3, 5] |> MyMod.multiply() |> IO.puts()
