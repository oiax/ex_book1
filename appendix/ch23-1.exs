ExUnit.start()

defmodule MyModTest do
  use ExUnit.Case

  test "リストの各要素を2倍にして返す" do
    assert MyMod.double([1, 2, 3]) == [2, 4, 6]
  end

  test "Range構造体の各要素を2倍にして返す" do
    assert MyMod.double(1..5) == [2, 4, 6, 8, 10]
  end
end
