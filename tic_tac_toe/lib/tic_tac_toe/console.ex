defmodule TicTacToe.Console do
  use GenServer

  def start_link(_arg) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def init(state) do
    Process.send(__MODULE__, :process_command, [])
    {:ok, state}
  end

  def handle_info(:process_command, state) do
    move =
      "Enter your move> "
      |> IO.gets()
      |> String.trim()
      |> String.downcase()

    case parse_move(move) do
      :quit -> System.halt(0)
      {x, y} when is_integer(x) and is_integer(y) -> IO.inspect({x, y})
      _ -> IO.puts("Syntax error.")
    end

    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
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
end
