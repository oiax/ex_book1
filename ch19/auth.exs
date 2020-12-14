defmodule Auth do
  def permitted?(tuple) do
    case tuple do
      {:admin, _} -> true
      {:member, _, rank} when rank in [:platinum, :gold] -> true
      {:member, _, _} -> false
      {:guest, _} -> false
    end
  end
end

users = [
  {:admin, "alice"},
  {:member, "bob", :gold},
  {:member, "carol", :silver},
  {:guest, "david"}
]

users
|> Enum.map(fn user -> Auth.permitted?(user) end)
|> IO.inspect()
