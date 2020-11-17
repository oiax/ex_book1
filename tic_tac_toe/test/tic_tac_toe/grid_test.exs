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

  @grid1 [
    [:o, :o, :o],
    [:b, :x, :x],
    [:b, :b, :b]
  ]

  @grid2 [
    [:o, :b, :o],
    [:o, :x, :x],
    [:o, :b, :x]
  ]

  @grid3 [
    [:x, :b, :o],
    [:o, :x, :o],
    [:o, :b, :x]
  ]

  describe "get_winner" do
    test "勝敗がついていなければnilを返す" do
      assert Grid.get_winner(@playing_grid) == nil
    end

    test "横一列を埋めてOの勝ち" do
      assert Grid.get_winner(@grid1) == :o
    end

    test "縦一列を埋めてOの勝ち" do
      assert Grid.get_winner(@grid2) == :o
    end

    test "斜め一列を埋めてXの勝ち" do
      assert Grid.get_winner(@grid3) == :x
    end
  end
end
