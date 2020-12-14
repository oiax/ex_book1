defmodule MyEnum do
  def frequencies(enumerable) do
    Enum.reduce(enumerable, %{}, fn key, acc ->
      case acc do
        %{^key => value} -> Map.put(acc, key, value + 1)
        %{} -> Map.put(acc, key, 1)
      end
    end)
  end
end

~w(b a a c b b b a a b)
|> MyEnum.frequencies()
|> IO.inspect()
