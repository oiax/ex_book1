defmodule Shop do
  def opening_hours(day_of_week) do
    case day_of_week do
      1 -> "10:00-19:00"
      2 -> "10:00-19:00"
      3 -> "休業日"
      4 -> "10:00-19:00"
      5 -> "10:00-19:00"
      6 -> "10:00-13:00"
      7 -> "休業日"
    end
  end
end

IO.puts(Shop.opening_hours(1))
IO.puts(Shop.opening_hours(3))
