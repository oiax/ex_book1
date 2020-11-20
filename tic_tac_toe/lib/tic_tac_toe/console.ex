defmodule TicTacToe.Console do
  use GenServer
  import TicTacToe, only: [debug: 1, info: 1], warn: false
  alias TicTacToe.Game
  alias TicTacToe.Grid
  alias TicTacToe.Player

  def start_link(_arg) do
    mode =
      case System.get_env("GAME_MODE") do
        "1" -> :human_vs_human
        "2" -> :human_vs_computer
        _ -> :human_vs_human
      end

    info("The console started.")

    GenServer.start_link(__MODULE__, %{mode: mode}, name: __MODULE__)
  end

  def init(state) do
    Process.send(__MODULE__, :process_command, [])

    info("The console started.")

    {:ok, state}
  end

  def handle_info(:process_command, state) do
    refresh_screen()

    case {state.mode, Game.get_turn()} do
      {:human_vs_human, _} -> human_turn()
      {:human_vs_computer, :o} -> human_turn()
      {:human_vs_computer, :x} -> computer_turn()
    end

    judge_result()
    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
  end

  defp human_turn do
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
  end

  defp computer_turn() do
    :timer.sleep(500)

    grid = Game.get_grid()
    {x, y} = Enum.random(Grid.get_blank_cells(grid))
    Game.put_mark(x, y)
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
      Game.set_last_error("Invalid move")
    end
  end

  defp judge_result do
    grid = Game.get_grid()

    cond do
      winner = Grid.get_winner(grid) -> display_winner(winner)
      Grid.draw?(grid) -> draw()
      true -> Process.send(__MODULE__, :process_command, [])
    end
  end

  defp draw do
    refresh_screen()
    IO.puts("Draw.")
    System.halt(0)
  end

  defp display_winner(winner) do
    refresh_screen()
    IO.puts("Player " <> Player.to_string(winner) <> " wins!")
    System.halt(0)
  end
end
