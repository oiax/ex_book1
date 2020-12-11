defmodule MyMod do
  require Integer

  def func(n) do
    if Integer.is_odd(n) do
      "Odd"
    else
      "Even"
    end
  end
end

IO.inspect(MyMod.func(1))
IO.inspect(MyMod.func(2))
