defmodule MyMod do
  def increment(n), do: n + 1
  def decrement(n), do: n - 1
end

ExUnit.start()

defmodule MyModTest do
  use ExUnit.Case

  describe "increment/1" do
    test "整数に1を加える" do
      assert MyMod.increment(100) == 101
    end
  end

  describe "decrement/1" do
    test "整数から1を引く" do
      assert MyMod.decrement(100) == 99
    end
  end
end
