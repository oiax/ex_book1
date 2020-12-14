defmodule StringBuffer do
  use Agent

  def start_link() do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def append(name, str) do
    Agent.update(__MODULE__, fn state ->
      cur = Map.get(state, name, "")
      Map.put(state, name, cur <> str)
    end)
  end

  def get_value(name) do
    Agent.get(__MODULE__, fn state -> Map.get(state, name) end)
  end
end

StringBuffer.start_link()
StringBuffer.append(:x, "A")
StringBuffer.append(:y, "B")
StringBuffer.append(:x, "C")
v1 = StringBuffer.get_value(:x)
v2 = StringBuffer.get_value(:y)
IO.inspect({v1, v2})
