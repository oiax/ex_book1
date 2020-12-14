defmodule MyMod1 do
  def _func1, do: 1
  def func2, do: 2
end

defmodule MyMod2 do
  import MyMod1

  def experiment do
    _func1() + func2()
  end
end

IO.inspect(MyMod2.experiment())
