x =
  with {:ok, data} <- File.read("data.txt"),
       "value=" <> value <- data,
       value = String.trim(value),
       n <- Integer.parse(value) do
    n
  else
    {:error, _} -> {:error, "Can't read the data file."}
    data when is_binary(data) -> {:error, "Wrong prefix."}
    :error -> {:error, "Can't parse the value as an integer."}
  end

IO.inspect(x)
