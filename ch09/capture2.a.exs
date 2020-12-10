defmodule MyMod do
  def experiment do
    func = &multiply/2
    func.(3, 5)
  end

  def multiply(a, b) do
    a * b
  end
end

IO.inspect(MyMod.experiment())
