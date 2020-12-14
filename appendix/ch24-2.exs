# `ex_book1/ch24/adder/lib/adder.ex` を解答用に修正したものです。
defmodule Adder do
  def get_total(numbers) when is_list(numbers) do
    numbers
    |> Enum.map(&parse_line/1)
    |> Enum.sum()
  end

  def get_total(data) do
    data
    |> String.split("\n")
    |> Enum.map(&parse_line/1)
    |> Enum.sum()
  end

  defp parse_line(line) do
    case Integer.parse(line) do
      {i, ""} -> i
      _ -> 0
    end
  end
end
