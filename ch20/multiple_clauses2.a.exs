defmodule MyMod do
  def print_first_element(list) do
    if list == [] do
      IO.puts("Empty")
    else
      [number | _] = list
      IO.puts(number)
    end
  end
end

MyMod.print_first_element([])
MyMod.print_first_element([1, 2, 3])
