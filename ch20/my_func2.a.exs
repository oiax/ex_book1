defmodule MyMod do
  def my_func([]), do: 0
  def my_func([x]), do: x
  def my_func([x, y]), do: add(x, y)
  def my_func([x, y, z]), do: sum(x, y, z)
  defp add(x, y), do: x + y
  defp sum(x, y, z), do: x + y + z
end

[] |> MyMod.my_func() |> IO.puts()
[3] |> MyMod.my_func() |> IO.puts()
[3, 7] |> MyMod.my_func() |> IO.puts()
[3, 7, 2] |> MyMod.my_func() |> IO.puts()
