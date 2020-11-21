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

  def valid_move?(grid, x, y) when x >= 0 and x < 3 and y >= 0 and y < 3 do
    get_mark_at(grid, x, y) == :b
  end

  def valid_move?(_grid, _x, _y), do: false

  defp get_mark_at(grid, x, y) do
    grid
    |> Enum.at(x)
    |> Enum.at(y)
  end

  def draw?(grid) do
    grid
    |> List.flatten()
    |> Enum.all?(&(&1 in [:o, :x]))
  end

  def get_winner(grid) do
    lines = grid ++ transpose(grid) ++ diagonals(grid)

    line =
      Enum.find(lines, fn line ->
        line == [:o, :o, :o] or line == [:x, :x, :x]
      end)

    if line, do: List.first(line), else: nil
  end

  defp transpose(grid) do
    grid
    |> List.zip()
    |> Enum.map(&Tuple.to_list/1)
  end

  defp diagonals(grid) do
    [diagonal(grid), diagonal(Enum.reverse(grid))]
  end

  defp diagonal(grid) do
    grid
    |> Enum.with_index()
    |> Enum.map(fn {row, index} -> Enum.at(row, index) end)
  end

  def get_blank_cells(grid) do
    grid
    |> Enum.with_index()
    |> Enum.map(fn {cells, x} -> filter_blank_cells(cells, x) end)
    |> List.flatten()
  end

  defp filter_blank_cells(cells, x) do
    cells
    |> Enum.with_index()
    |> Enum.filter(fn {cell, _y} -> cell == :b end)
    |> Enum.map(fn {_cell, y} -> {x, y} end)
  end
end
