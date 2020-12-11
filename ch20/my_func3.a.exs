defmodule MyMod do
  def my_func(list, x \\ 1)
  def my_func([], x), do: x
  def my_func([a], x), do: a * x
  def my_func([a, b], x), do: a * b * x
end

[] |> MyMod.my_func() |> IO.puts()
[2] |> MyMod.my_func(3) |> IO.puts()
[2, 3] |> MyMod.my_func() |> IO.puts()
[2, 3] |> MyMod.my_func(5) |> IO.puts()
