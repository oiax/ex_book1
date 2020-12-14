items = [
  %{name: "A"},
  %{name: "B"},
  %{name: "C"}
]

x =
  for item <- items, into: "" do
    item.name
  end

IO.inspect(x)
