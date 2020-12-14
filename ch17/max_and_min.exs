players = [
  %{name: "alice", score: 50},
  %{name: "bob", score: 80},
  %{name: "carol", score: 0},
  %{name: "david", score: 100},
  %{name: "eve", score: 40}
]

players
|> Enum.max(fn a, b -> a.score >= b.score end)
|> Map.get(:name)
|> IO.inspect()

players
|> Enum.min(fn a, b -> a.score <= b.score end)
|> Map.get(:name)
|> IO.inspect()
