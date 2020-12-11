defmodule Shop do
  def opening_hours(day_of_week) do
    case day_of_week do
      n when n in [1, 2, 4, 5] -> "10:00-19:00"
      n when n in [6] -> "10:00-13:00"
      n when n in [3, 7] -> "休業日"
      n -> raise(ArgumentError, "The 1st argument must be 1-7: #{n}")
    end
  end
end

IO.puts(Shop.opening_hours(1))
IO.puts(Shop.opening_hours(3))
