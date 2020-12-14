defmodule MyMod do
  def func1, do: func2()

  @doc """
  `:ok` を返す。
  """
  defp func2, do: :ok
end

IO.inspect(MyMod.func1())
