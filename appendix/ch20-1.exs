my_func = fn
  arg when is_integer(arg) -> arg + 1
  _ -> nil
end

IO.inspect(my_func.(100))
IO.inspect(my_func.("100"))
