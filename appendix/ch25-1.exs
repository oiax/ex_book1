# `ex_book1/ch25/string_buffler1`　を解答用に修正したものです。
defmodule StringBuffer do
  use Agent

  def start_link(initial_state) do
    Agent.start_link(fn -> initial_state end, name: __MODULE__)
  end

  def append(str), do: Agent.update(__MODULE__, &(&1 <> str))

  def get_value, do: Agent.get(__MODULE__, & &1)

  def get_length, do: Agent.get(__MODULE__, &String.length(&1))
end

StringBuffer.start_link("")
StringBuffer.append("A")
StringBuffer.append("B")
StringBuffer.append("C")
IO.inspect(StringBuffer.get_value())
IO.inspect(StringBuffer.get_length())
