defmodule MyMod do
  def double(enumerable) do
    Enum.map(enumerable, fn n -> n * 2 end)
  end
end

[1, 2, 3] |> MyMod.double() |> IO.inspect()
1..5 |> MyMod.double() |> IO.inspect()
