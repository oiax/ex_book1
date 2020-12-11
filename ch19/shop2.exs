defmodule Shop do
  def opening_hours(day_of_week) do
    cond do
      day_of_week in [1, 2, 4, 5] -> "10:00-19:00"
      day_of_week in [6] -> "10:00-19:00"
      day_of_week in [3, 7] -> "休業日"
      true -> raise(ArgumentError, "The 1st argument must be 1-7: #{day_of_week}")
    end
  end
end

IO.puts(Shop.opening_hours(1))
IO.puts(Shop.opening_hours(3))
