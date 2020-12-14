defmodule MyMod do
  def print(:a), do: IO.puts("Alpha")
  def print(:b), do: IO.puts("Beta")
  def print(_atom), do: IO.puts("Other")
end

MyMod.print(:a)
MyMod.print(:b)
MyMod.print(:z)
