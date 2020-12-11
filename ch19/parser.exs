defmodule Parser do
  def sum(data) do
    case String.split(data, ":") do
      [""] -> 0
      [a] -> String.to_integer(a)
      [a, b] -> String.to_integer(a) + String.to_integer(b)
    end
  end
end

IO.puts(Parser.sum(""))
IO.puts(Parser.sum("100"))
IO.puts(Parser.sum("99:4"))
