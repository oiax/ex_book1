defmodule MyMod do
  def print(score) when score == 100, do: IO.puts("* #{score}")
  def print(score) when score > 70, do: IO.puts("+ #{score}")
  def print(score), do: IO.puts("  #{score}")
end

scores = [100, 50, 75, 70, 60]

for score <- scores do
  MyMod.print(score)
end
