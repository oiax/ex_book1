defmodule MyMod1 do
  def add(a, b \\ 1), do: a + b
end

defmodule MyMod2 do
  import MyMod1, only: [add: 1]
  def experiment(a), do: add(a)
end

IO.inspect(MyMod2.experiment(2))
