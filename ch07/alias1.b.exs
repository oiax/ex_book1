defmodule MyMod.Utils.Math do
  def multiply(x, y) do
    x * y
  end
end

alias MyMod.Utils.Math

IO.puts(Math.multiply(3, 5))
