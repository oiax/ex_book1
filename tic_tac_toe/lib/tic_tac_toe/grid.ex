defmodule TicTacToe.Grid do
  def render(grid) do
    grid
    |> Enum.map(&render_row/1)
    |> Enum.join("\n---+---+---\n")
  end

  defp render_row(cells) do
    cells
    |> Enum.map(fn
      :b -> "   "
      :o -> " O "
      :x -> " X "
    end)
    |> Enum.join("|")
  end

  def valid_move?(grid, x, y) do
    if x >= 0 and x < 3 and y >= 0 and y < 3 do
      get_mark_at(grid, x, y) == :b
    else
      false
    end
  end

  defp get_mark_at(grid, x, y) do
    grid
    |> Enum.at(x)
    |> Enum.at(y)
  end
end
