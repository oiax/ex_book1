defmodule Greeter do
  def hello(name) do
    IO.puts("Hello, #{name}!")
  end
end

defmodule Greeter do
  def good_bye(name) do
    IO.puts("Good bye, #{name}!")
  end
end

Greeter.hello("world")
Greeter.good_bye("world")
