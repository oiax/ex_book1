calc = fn a, b ->
  if rem(b, 2) == 0 do
    a * b
  else
    a * (b - 1)
  end
end

IO.inspect(calc.(3, 5))
IO.inspect(calc.(3, 6))
