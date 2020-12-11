defmodule MyMod do
  def print_name(map) do
    if Map.has_key?(map, :name) do
      IO.puts(map.name)
    else
      IO.puts("[No name field]")
    end
  end
end

MyMod.print_name(%{name: "Alice"})
MyMod.print_name(%{stage: "B"})
