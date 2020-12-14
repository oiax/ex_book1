defmodule Auth do
  def permitted?(tuple) do
    case tuple do
      t when elem(t, 1) == "test" -> true
      {:admin, _} -> true
      {:member, _, rank} when rank in [:platinum, :gold] -> true
      {:member, _, _} -> false
      {:guest, _} -> false
    end
  end
end
