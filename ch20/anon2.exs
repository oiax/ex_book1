names = ["!Alice", "Bob", "Carol"]

names
|> Enum.map(fn
  "!" <> name -> %{name: name, type: "admin"}
  name -> %{name: name, type: "user"}
end)
|> IO.inspect()
