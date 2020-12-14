multiply = fn list ->
  [a, b] = list
  a * b
end

IO.puts(multiply.([3, 5]))
