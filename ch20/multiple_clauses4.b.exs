defmodule MyMod do
  def parse("* " <> name), do: %{name: name, checked: true}
  def parse("  " <> name), do: %{name: name, checked: false}
end

{:ok, data} = File.read("names.txt")

members =
  data
  |> String.trim_trailing()
  |> String.split("\n")
  |> Enum.map(fn line -> MyMod.parse(line) end)

IO.inspect(members)
