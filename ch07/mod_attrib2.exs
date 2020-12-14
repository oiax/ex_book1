defmodule MyMod do
  @call "Hello"
  def hello(name) do
    @call <> ", " <> name <> "!"
  end

  @call "Good bye"
  def good_bye(name) do
    @call <> ", " <> name <> "!"
  end
end

IO.puts(MyMod.hello("Alice"))
IO.puts(MyMod.good_bye("Alice"))
