defmodule MyEnum do
  def map(enumerable, fun) do
    enumerable
    |> Enum.reduce([], fn entry, acc -> [fun.(entry) | acc] end)
    |> Enum.reverse()
  end
end

[1, 2, 3]
|> MyEnum.map(fn n -> n * 2 end)
|> IO.inspect()
