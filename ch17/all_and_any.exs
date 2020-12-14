players = [
  %{name: "alice", score: 50},
  %{name: "bob", score: 80},
  %{name: "carol", score: 0},
  %{name: "david", score: 100},
  %{name: "eve", score: 40}
]

players
|> Enum.all?(fn p -> p.score > 0 end)
|> IO.inspect()

players
|> Enum.any?(fn p -> p.score > 0 end)
|> IO.inspect()
