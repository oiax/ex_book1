defmodule TicTacToe do
  require Logger

  def debug(term) do
    term
    |> inspect()
    |> Logger.debug()
  end

  def info(message) do
    Logger.info(message)
  end
end
