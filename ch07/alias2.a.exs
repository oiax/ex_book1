defmodule MyMod.Utils.Math do
  def multiply(x, y) do
    x * y
  end
end

defmodule MyApp do
  alias MyMod.Utils.Math

  def calc(x, y) do
    p = Math.multiply(x, y)
    "#{x} * #{y} = #{p}"
  end
end

IO.puts(MyApp.calc(3, 5))
