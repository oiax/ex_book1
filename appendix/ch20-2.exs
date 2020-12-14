defmodule Math do
  def fibonacci(1), do: 0
  def fibonacci(2), do: 1
  def fibonacci(n), do: fibonacci(n - 1) + fibonacci(n - 2)
end

1..10
|> Enum.map(&Math.fibonacci/1)
|> IO.inspect()
