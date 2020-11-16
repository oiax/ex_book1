defmodule TicTacToe.Console do
  use GenServer
  alias TicTacToe.Game
  alias TicTacToe.Grid
  alias TicTacToe.Player

  def start_link(_arg) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def init(state) do
    Process.send(__MODULE__, :process_command, [])
    {:ok, state}
  end

  def handle_info(:process_command, state) do
    refresh_screen()

    move =
      get_prompt()
      |> IO.gets()
      |> String.trim()
      |> String.downcase()

    case parse_move(move) do
      :quit -> System.halt(0)
      {x, y} when is_integer(x) and is_integer(y) -> move(x, y)
      _ -> IO.puts("Syntax error.")
    end

    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
  end

  defp get_prompt do
    "Player " <> Player.to_string(Game.get_turn()) <> ", enter your move> "
  end

  defp parse_move("quit"), do: :quit
  defp parse_move("exit"), do: :quit

  defp parse_move(move) do
    move
    |> String.split()
    |> do_parse_move()
  end

  defp do_parse_move([x, y]) do
    [x, y]
    |> Enum.map(fn e ->
      case Integer.parse(e) do
        {n, ""} -> n - 1
        _ -> nil
      end
    end)
    |> List.to_tuple()
  end

  defp do_parse_move(_), do: :error

  defp refresh_screen do
    grid = Game.get_grid()
    IO.puts(Grid.render(grid))
    IO.puts("\n")
  end

  defp move(x, y) do
    grid = Game.get_grid()

    if Grid.valid_move?(grid, x, y) do
      Game.put_mark(x, y)
    else
      IO.puts("Invalid move")
    end
  end
end
