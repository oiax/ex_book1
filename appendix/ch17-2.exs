defmodule MyMod do
  def triple_each(enumerable) do
    Enum.map(enumerable, fn entry -> entry * 3 end)
  end
end
