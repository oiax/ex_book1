x = 0

try do
  IO.puts("A")
  if x == 0, do: throw(:error)
  IO.puts("B")
catch
  :bang -> IO.puts("C")
end
