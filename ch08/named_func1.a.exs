defmodule MyMod do
  def hello do
    "Hello!"
  end

  def hello(name) do
    "Hello, #{name}!"
  end
end

IO.puts(MyMod.hello())
IO.puts(MyMod.hello("Alice"))
