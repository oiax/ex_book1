defmodule MyMod do
  def my_func([], x \\ 1), do: x
  def my_func([a], x \\ 1), do: a * x
  def my_func([a, b], x \\ 1), do: a * b * x
end

[] |> MyMod.my_func() |> IO.puts()
[2] |> MyMod.my_func(3) |> IO.puts()
[2, 3] |> MyMod.my_func() |> IO.puts()
[2, 3] |> MyMod.my_func(5) |> IO.puts()
