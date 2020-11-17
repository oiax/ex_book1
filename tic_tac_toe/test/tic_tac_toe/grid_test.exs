defmodule TicTacToe.GridTest do
  use ExUnit.Case
  alias TicTacToe.Grid

  @playing_grid [
    [:b, :b, :o],
    [:b, :x, :o],
    [:b, :b, :b]
  ]

  @draw_grid [
    [:o, :x, :o],
    [:o, :x, :o],
    [:x, :o, :x]
  ]

  describe "draw?/1" do
    test "プレイ中ならfalseを返す" do
      assert Grid.draw?(@playing_grid) == false
    end

    test "すべてマスが埋まっていればtrueを返す" do
      assert Grid.draw?(@draw_grid) == true
    end
  end
end
