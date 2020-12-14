defmodule MyMod do
  def parse(line) do
    case line do
      "* " <> name -> %{name: name, checked: true}
      "  " <> name -> %{name: name, checked: false}
    end
  end
end

{:ok, data} = File.read("names.txt")

members =
  data
  |> String.trim_trailing()
  |> String.split("\n")
  |> Enum.map(fn line -> MyMod.parse(line) end)

IO.inspect(members)
