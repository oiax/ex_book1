defmodule TicTacToe do
  require Logger

  def info(message) do
    Logger.info(message)
  end

  def debug(label, term) do
    str = inspect(term, pretty: true)
    Logger.debug("#{label}: #{str}")
  end
end
