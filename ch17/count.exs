players = [
  %{name: "alice", score: 50},
  %{name: "bob", score: 80},
  %{name: "carol", score: 0},
  %{name: "david", score: 100},
  %{name: "eve", score: 40}
]

players
|> Enum.count(fn p -> p.score > 50 end)
|> IO.inspect()
