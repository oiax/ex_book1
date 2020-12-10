defmodule MyMod do
  def func1, do: func2()
  defp func2, do: :ok
end

IO.inspect(MyMod.func1())
IO.inspect(function_exported?(MyMod, :func1, 0))
IO.inspect(function_exported?(MyMod, :func2, 0))
IO.inspect(MyMod.__info__(:functions))
