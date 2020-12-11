defmodule Player do
  def name_to_map(data) do
    case data do
      "!" <> name -> %{name: name, rank: :a}
      name -> %{name: name, rank: :b}
    end
  end
end

names = [
  "Alice",
  "!Bob",
  "Carol"
]

players = Enum.map(names, fn name -> Player.name_to_map(name) end)
IO.inspect(players)
