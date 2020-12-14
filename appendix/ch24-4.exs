# `ex_book1/ch24/adder/lib/mix/tasks` 下に `sum.ex` として新規作成してください。
defmodule Mix.Tasks.Sum do
  @shortdoc "Sum up the given numbers"

  use Mix.Task

  def run(args) do
    args
    |> Adder.get_total()
    |> IO.puts()
  end
end
