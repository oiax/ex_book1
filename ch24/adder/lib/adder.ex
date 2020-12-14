defmodule Adder do
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
