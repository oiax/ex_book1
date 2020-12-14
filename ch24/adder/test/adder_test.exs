defmodule AdderTest do
  use ExUnit.Case

  describe "get_total/1" do
    @data """
    30
    40
    ABC
    15
    """

    test "整数として解釈できない行は無視される" do
      assert Adder.get_total(@data) == 85
    end
  end
end
