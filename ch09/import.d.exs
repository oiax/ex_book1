defmodule MyMod1 do
  def func1, do: 1
  def func2, do: 2
end

defmodule MyMod2 do
  def experiment do
    import MyMod1, only: [func1: 0, func2: 0]

    func1() + func2()
  end
end

IO.inspect(MyMod2.experiment())
