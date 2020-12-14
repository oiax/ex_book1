defmodule MyMod do
  def make_tuple(a, b \\ :x, c \\ :y) do
    {a, b, c}
  end
end

IO.inspect(MyMod.make_tuple(:i, :j, :k))
IO.inspect(MyMod.make_tuple(:i, :j))
IO.inspect(MyMod.make_tuple(:i))
IO.inspect(MyMod.__info__(:functions))
