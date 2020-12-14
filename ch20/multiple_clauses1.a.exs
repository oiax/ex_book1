defmodule MyMod do
  def print(atom) do
    case atom do
      :a -> IO.puts("Alpha")
      :b -> IO.puts("Beta")
      _ -> IO.puts("Other")
    end
  end
end

MyMod.print(:a)
MyMod.print(:b)
MyMod.print(:z)
