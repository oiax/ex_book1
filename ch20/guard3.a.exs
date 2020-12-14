defmodule MyMod do
  def print_first_element([]), do: IO.puts("Empty")
  def print_first_element([number | _]), do: IO.puts(number)
  def print_first_element({}), do: IO.puts("Empty")
  def print_first_element(arg) when is_tuple(arg), do: IO.puts(elem(arg, 0))
  def print_first_element(_), do: IO.puts("Error")
end

MyMod.print_first_element([])
MyMod.print_first_element([1, 2, 3])
MyMod.print_first_element({})
MyMod.print_first_element({1, 2, 3})
MyMod.print_first_element("")
