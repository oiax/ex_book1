my_func = fn arg ->
  case arg do
    "!" <> name -> %{name: name, type: "admin"}
    name -> %{name: name, type: "user"}
  end
end

IO.inspect(my_func.("!Alice"))
IO.inspect(my_func.("Bob"))
