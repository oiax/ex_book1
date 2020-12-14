defmodule MyMod do
  @reserved_names [
    "admin",
    "administrator",
    "root",
    "system"
  ]

  def create_user(name) do
    if name in @reserved_names do
      {:error, :reserved}
    else
      user = %{type: "user", name: name}
      {:ok, user}
    end
  end
end

{:ok, alice} = MyMod.create_user("alice")
IO.inspect(alice)
{:error, reason} = MyMod.create_user("root")
IO.inspect(reason)
