defmodule MyMod do
  def add(a, b), do: a + b
end

import MyMod
IO.inspect(add(1, 1))
