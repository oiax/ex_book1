defmodule TicTacToe.Game do
  use Agent

  @initial_grid [
    [:b, :b, :b],
    [:b, :b, :b],
    [:b, :b, :b]
  ]

  def start_link(_arg) do
    state = %{
      grid: @initial_grid,
      turn: :o
    }

    Agent.start_link(fn -> state end, name: __MODULE__)
  end

  def get_grid, do: Agent.get(__MODULE__, & &1.grid)

  def get_turn, do: Agent.get(__MODULE__, &(&1.turn))
end
