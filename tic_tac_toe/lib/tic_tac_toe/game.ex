defmodule TicTacToe.Game do
  use Agent
  alias TicTacToe.Player

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

  def put_mark(x, y) when is_integer(x) and is_integer(y) do
    Agent.update(__MODULE__, fn state ->
      %{state | turn: Player.next(state.turn)}
    end)
  end
end
