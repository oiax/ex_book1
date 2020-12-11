x =
  with {:ok, data} <- File.read("data.txt"),
       "value=" <> value <- data,
       value = String.trim(value),
       {n, _} <- Integer.parse(value) do
    n
  else
    _ -> nil
  end

IO.inspect(x)
