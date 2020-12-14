defmodule MyMod do
  def make_tuple(a, b \\ :x) do
    {a, b}
  end
end

IO.inspect(MyMod.make_tuple(:i, :j))
IO.inspect(MyMod.make_tuple(:i))
IO.inspect(MyMod.__info__(:functions))
