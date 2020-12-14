x = 0

try do
  IO.puts("A")
  if x == 0, do: throw(:error)
  IO.puts("B")
catch
  :error -> IO.puts("C")
end
