defmodule TicTacToe.Game do
  use Agent
  import TicTacToe, only: [info: 1, debug: 2], warn: false

  def start_link(_arg) do
    info("The game agent started.")

    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end
end
