defmodule Mix.Tasks.Play do
  use Mix.Task
  @shortdoc "Play tic-tac-toe"

  def run(_) do
    Mix.Task.run("run", ["--no-halt"])
  end
end
