x =
  for name <- ~w(alice bob carol), uniq: true do
    String.length(name)
  end

IO.inspect(x)
