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
end
