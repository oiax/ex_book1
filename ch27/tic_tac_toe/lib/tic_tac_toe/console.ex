defmodule TicTacToe.Console do
  use GenServer
  import TicTacToe, only: [info: 1, debug: 2], warn: false
  alias TicTacToe.Game
  alias TicTacToe.Grid
  alias TicTacToe.Player

  def start_link(_arg) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def init(state) do
    Process.send(__MODULE__, :process_command, [])

    info("The console started.")
    debug("state", state)

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
      _ -> Game.set_last_error("Syntax error.")
    end

    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
  end

  defp get_prompt do
    prompt =
      "Player " <> Player.to_string(Game.get_turn()) <> ", enter your move> "

    if error_message = Game.take_last_error() do
      error_message <> " " <> prompt
    else
      prompt
    end
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
    IO.puts("\e[2J")
    grid = Game.get_grid()
    IO.puts(Grid.render(grid))
    IO.puts("\n")
  end

  defp move(x, y) do
    grid = Game.get_grid()

    if Grid.valid_move?(grid, x, y) do
      Game.put_mark(x, y)
    else
      Game.set_last_error("Invalid move.")
    end
  end
end
