defmodule MyMod do
  def get_name_and_number(map) do
    try do
      %{name: name, number: number} = map
      {:ok, name, number * 100}
    rescue
      MatchError -> {:error, "Bad argument."}
    end
  end
end

%{name: "Alice", number: nil}
|> MyMod.get_name_and_number()
|> IO.inspect()
