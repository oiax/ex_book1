e = []
x = [e | "a"]
y = [x | "b"]
z = [y | "c"]
IO.inspect(z)
s = List.to_string(z)
IO.inspect(s)
