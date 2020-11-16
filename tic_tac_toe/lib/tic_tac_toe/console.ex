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

    case move do
      "quit" -> System.halt(0)
      "exit" -> System.halt(0)
      _ -> IO.puts(move)
    end

    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
  end
end
