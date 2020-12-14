players = [
  %{name: "alice", grade: :b},
  %{name: "bob", grade: :a},
  %{name: "carol", grade: :c},
  %{name: "david", grade: :a},
  %{name: "eve", grade: :b}
]

players
|> Enum.group_by(fn p -> p.grade end)
|> IO.inspect()
