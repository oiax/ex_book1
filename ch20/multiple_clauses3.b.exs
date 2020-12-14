defmodule MyMod do
  def print_name(%{name: name}), do: IO.puts(name)
  def print_name(_map), do: IO.puts("[No name field]")
end

MyMod.print_name(%{name: "Alice"})
MyMod.print_name(%{stage: "B"})
