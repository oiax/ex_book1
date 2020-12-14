defmodule MyMod do
  def show_tuple(x, opts) do
    IO.inspect({x, opts[:do]})
  end
end

MyMod.show_tuple 1 do
  2
end
