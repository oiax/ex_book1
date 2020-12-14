defmodule Example do
  def parse("* " <> name), do: %{name: name, checked: true}
  def parse("  " <> name), do: %{name: name, checked: false}
  def parse(""), do: nil
end

{:ok, data} = File.read("names.txt")

members =
  data
  |> String.trim_trailing()
  |> String.split("\n")
  |> Enum.map(fn line -> MyMod.parse(line) end)
  |> Enum.reject(&is_nil/1)

IO.inspect(members)
