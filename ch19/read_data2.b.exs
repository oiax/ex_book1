x =
  with {:ok, data} <- File.read("data.txt"),
       "value=" <> value <- data,
       value = String.trim(value),
       {n, _} <- Integer.parse(value) do
    n
  end

IO.inspect(x)
