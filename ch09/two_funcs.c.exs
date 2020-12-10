defmodule MyMod do
  def func1, do: func2()
  defp func2, do: :ok
end

IO.inspect(MyMod.func2())
IO.inspect(MyMod.func1())
