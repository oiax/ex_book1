defmodule Auth do
  def permitted?(tuple) do
    case tuple do
      {:admin, _} -> true
      {:member, "test", _} -> true
      {:member, _, rank} when rank in [:platinum, :gold] -> true
      {:member, _, _} -> false
      {:guest, "test"} -> true
      {:guest, _} -> false
    end
  end
end
