defmodule MyMod do
  def double(x) do
    x * 2
  end
end

n = 2
n = MyMod.double(n)
n = MyMod.double(n)
n = MyMod.double(n)
IO.puts(n)
