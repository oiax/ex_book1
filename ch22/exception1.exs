defmodule MyMod do
  def get_name_and_number(map) do
    %{name: name, number: number} = map
    {:ok, name, number}
  end
end

%{name: "Alice"}
|> MyMod.get_name_and_number()
|> IO.inspect()
