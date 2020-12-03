defmodule TicTacToe.Game do
  use Agent
  import TicTacToe, only: [info: 1, debug: 2], warn: false
  alias TicTacToe.Player

  @initial_grid [
    [:b, :b, :b],
    [:b, :b, :b],
    [:b, :b, :b]
  ]

  def start_link(_arg) do
    state = %{
      grid: @initial_grid,
      turn: :o,
      last_error: nil
    }

    info("The game agent started.")

    Agent.start_link(fn -> state end, name: __MODULE__)
  end

  def get_grid, do: Agent.get(__MODULE__, & &1.grid)

  def get_turn, do: Agent.get(__MODULE__, & &1.turn)

  def put_mark(x, y) when is_integer(x) and is_integer(y) do
    Agent.update(__MODULE__, fn state ->
      new_grid = put_mark_in_grid(state.grid, x, y, state.turn)
      %{state | grid: new_grid, turn: Player.next(state.turn)}
    end)
  end

  defp put_mark_in_grid(rows, x, y, mark) do
    List.update_at(rows, x, fn cells ->
      List.update_at(cells, y, fn :b -> mark end)
    end)
  end

  def set_last_error(message) do
    Agent.update(__MODULE__, fn state -> %{state | last_error: message} end)
  end

  def take_last_error do
    Agent.get_and_update(__MODULE__, fn state ->
      {state.last_error, %{state | last_error: nil}}
    end)
  end
end
