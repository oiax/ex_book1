defmodule MyMod do
  def print(score) do
    cond do
      score == 100 -> IO.puts("* #{score}")
      score >= 70 -> IO.puts("+ #{score}")
      true -> IO.puts("  #{score}")
    end
  end
end

scores = [100, 50, 75, 70, 60]

for score <- scores do
  MyMod.print(score)
end
