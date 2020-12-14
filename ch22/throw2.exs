defmodule MyMod do
  def find_by_name(list, name) do
    Enum.find(list, fn
      %{name: n} -> n == name
      element -> raise ArgumentError, "got #{inspect(element)}"
    end)
  end
end

MyMod.find_by_name(~w(alice bob carol), "david")
