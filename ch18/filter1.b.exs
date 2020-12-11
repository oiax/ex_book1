players = [
  %{name: "alice", score: 50},
  %{name: "bob", score: 80},
  %{name: "carol", score: 0},
  %{name: "david", score: 100},
  %{name: "eve"}
]

x = for p <- players, p.score >= 50, do: p.name
IO.inspect(x)
