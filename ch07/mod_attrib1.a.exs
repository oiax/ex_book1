defmodule MyMod do
  def create_user(name) do
    if name in ["admin", "administrator", "root", "system"] do
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
