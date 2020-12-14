defmodule MyMod do
  def my_func(n) when is_integer(n) do
    n + 1
  end

  def my_func(str) when is_binary(str) do
    case Integer.parse(str) do
      {n, ""} -> n + 1
      _ -> raise(ArgumentError)
    end
  end
end

IO.puts(MyMod.my_func(1))
IO.puts(MyMod.my_func("100"))
