defmodule MyMod do
  def numbering(names) do
    names
    |> Enum.with_index()
    |> Enum.map(fn {entry, i} -> "#{i + 1}. #{entry}" end)
    |> Enum.join("\n")
  end
end

~w(Alice Bob Carol)
|> MyMod.numbering()
|> IO.puts()
