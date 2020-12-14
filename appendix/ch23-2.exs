defmodule MyMod do
  def sum([]), do: 0

  def sum(list) do
    {sum, _} =
      Enum.reduce_while(list, {0, 0}, fn
        0, {sum, 2} -> {:halt, {sum, 2}}
        0, {sum, zeros} -> {:cont, {sum, zeros + 1}}
        n, {sum, zeros} -> {:cont, {sum + n, zeros}}
      end)

    sum
  end
end

ExUnit.start()

defmodule MyModTest do
  use ExUnit.Case

  @list [1, 5, 0, 2, 1, 7, 0, 2, 0, 3, 1, 0, 1]

  test "空のリストを指定した場合" do
    assert MyMod.sum([]) == 0
  end

  test "先頭から0に3回遭遇するまでの整数を足し上げる" do
    assert MyMod.sum(@list) == 18
  end
end
