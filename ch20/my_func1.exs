defmodule MyMod do
  def my_func([]), do: 0
  def my_func([x]), do: x
  def my_func([x, y]), do: x + y
end

[] |> MyMod.my_func() |> IO.puts()
[3] |> MyMod.my_func() |> IO.puts()
[3, 7] |> MyMod.my_func() |> IO.puts()
