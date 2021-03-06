players = [
  %{name: "alice", score: 50},
  %{name: "bob", score: 80},
  %{name: "carol", score: 0},
  %{name: "david", score: 100},
  %{name: "eve"}
]

x =
  players
  |> Enum.filter(fn p -> p.score >= 50 end)
  |> Enum.map(fn p -> p.name end)

IO.inspect(x)
