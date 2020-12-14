defmodule MyMod do
  def print(%{name: name} = map) when map.score >= 70 do
    IO.puts("* " <> name)
  end

  def print(%{name: name}), do: IO.puts("  " <> name)
end

students = [
  %{name: "Alice", score: 100},
  %{name: "Bob", score: 50},
  %{name: "Carol", score: 75},
  %{name: "Dave", score: 70},
  %{name: "Ellen", score: 60}
]

for student <- students do
  MyMod.print(student)
end
