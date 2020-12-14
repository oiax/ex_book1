defmodule Console do
  use GenServer

  def start_link(_arg) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def init(state) do
    Process.send(__MODULE__, :process_command, [])
    {:ok, state}
  end

  def handle_info(:process_command, state) do
    command =
      "COMMAND> "
      |> IO.gets()
      |> String.trim()

    IO.puts(command)

    Process.send(__MODULE__, :process_command, [])
    {:noreply, state}
  end
end

Console.start_link(nil)
