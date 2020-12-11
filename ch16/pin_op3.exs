key = :type
type = "user"
data = %{type: "user", name: "Alice"}
%{^key => ^type, name: name} = data
IO.inspect(name)
