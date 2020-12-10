defmodule MyMod do
  def func1, do: func2()
  def func2, do: :ok
end

IO.inspect(MyMod.func1())
