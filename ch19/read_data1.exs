x =
  case File.read("data.txt") do
    {:ok, data} ->
      case data do
        "value=" <> value ->
          value = String.trim(value)

          case Integer.parse(value) do
            {n, ""} -> n
            _ -> value
          end

        _ ->
          nil
      end

    {:error, _} ->
      nil
  end

IO.inspect(x)
