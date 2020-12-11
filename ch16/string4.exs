x = %{value: "$100"}
%{value: "$" <> v} = x
IO.inspect(v)
