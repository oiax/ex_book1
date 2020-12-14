defmodule StringBuffer do
  use Agent

  def start_link(initial_state) do
    Agent.start_link(fn -> initial_state end, name: __MODULE__)
  end

  def append(str) do
    Agent.update(__MODULE__, fn state -> state <> str end)
  end

  def get_value do
    Agent.get(__MODULE__, fn state -> state end)
  end
end

StringBuffer.start_link("")
StringBuffer.append("A")
StringBuffer.append("B")
StringBuffer.append("C")
IO.inspect(StringBuffer.get_value())
