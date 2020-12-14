# `ex_book1/ch24/adder/test/adder_test.exs` を解答用に修正したものです。
# `adder` ディレクトリ下で `mix test` を実行することでテストの成否を確かめてください。
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

    test "空文字を受け取った場合は0を返す" do
      assert Adder.get_total("") == 0
    end
  end
end
