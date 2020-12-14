s = "焼き芋"
<<x::utf8, y::utf8, z::utf8>> = s
IO.inspect({x, y, z})

for i <- [x, y, z] do
  IO.inspect(<<i::utf8>>)
end
