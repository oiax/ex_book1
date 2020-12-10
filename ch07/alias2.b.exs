defmodule MyMod.Utils.Math do
  def multiply(x, y) do
    x * y
  end
end

defmodule MyApp do
  def calc(x, y) do
    alias MyMod.Utils.Math

    p = Math.multiply(x, y)
    "#{x} * #{y} = #{p}"
  end
end

IO.puts(MyApp.calc(3, 5))
