defmodule MyMod do
  def print_first_element([]), do: IO.puts("Empty")
  def print_first_element([number | _]), do: IO.puts(number)
end

MyMod.print_first_element([])
MyMod.print_first_element([1, 2, 3])
