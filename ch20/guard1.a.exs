defmodule MyMod do
  def my_func(n) when is_integer(n) do
    n + 1
  end
end

IO.puts(MyMod.my_func(1))
