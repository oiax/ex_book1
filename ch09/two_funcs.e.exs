defmodule MyMod do
  def func1, do: func2()
  defp func2, do: :ok
  defp func3, do: :bang
end

IO.inspect(MyMod.func1())
