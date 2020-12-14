my_func = fn
  "!" <> name -> %{name: name, type: "admin"}
  name -> %{name: name, type: "user"}
end

IO.inspect(my_func.("!Alice"))
IO.inspect(my_func.("Bob"))
