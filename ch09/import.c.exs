defmodule MyMod1 do
  def func1, do: 1
  def func2, do: 2
end

defmodule MyMod2 do
  import MyMod1, only: [func1: 0, func2: 0]

  def experiment do
    func1() + func2()
  end
end

IO.inspect(MyMod2.experiment())
IO.inspect(MyMod2.func1())
