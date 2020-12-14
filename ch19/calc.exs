defmodule Calc do
  def plus_one(number_string) do
    case Integer.parse(number_string) do
      {n, _} -> Integer.to_string(n + 1)
      :error -> "ERROR"
    end
  end
end

IO.puts(Calc.plus_one("100"))
IO.puts(Calc.plus_one("five"))
