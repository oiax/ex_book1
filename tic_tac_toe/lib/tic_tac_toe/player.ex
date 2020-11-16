defmodule TicTacToe.Player do
  def next(:x), do: :o
  def next(:o), do: :x

  def to_string(:x), do: "X"
  def to_string(:o), do: "O"
end
