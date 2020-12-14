defmodule MyMod do
  def get_name_and_number(map) do
    try do
      %{name: name, number: number} = map
      {:ok, name, number}
    rescue
      MatchError -> {:error, "Bad argument."}
    end
  end
end

%{name: "Alice"}
|> MyMod.get_name_and_number()
|> IO.inspect()
