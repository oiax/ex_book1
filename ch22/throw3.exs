defmodule MyMod do
  def find_by_name(list, name) do
    try do
      Enum.find(list, fn
        %{name: n} -> n == name
        element -> throw(element)
      end)
    catch
      element -> raise ArgumentError, "got #{inspect(element)}"
    end
  end
end

MyMod.find_by_name(~w(alice bob carol), "david")
