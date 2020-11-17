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
    |> Enum.all?(&(&1 in [:x, :o]))
  end

  def get_winner(grid) do
    lines = grid ++ transpose(grid) ++ diagonals(grid)

    line =
      Enum.find(lines, fn line ->
        line == [:x, :x, :x] or line == [:o, :o, :o]
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
end
