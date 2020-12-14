defmodule StringUtility do
  def add_parens(str) do
    "(#{str})"
  end
end

x = "elixir"
y = StringUtility.add_parens(x)
IO.puts(y)
