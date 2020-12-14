defmodule MyMod do
  def double(enumerable) do
    Enum.map(enumerable, fn e ->
      {_, n} = e
      n * 2
    end)
  end
end

%{a: 1, b: 2, c: 3} |> MyMod.double() |> IO.inspect()
