defmodule Greeter do
  @moduledoc """
  挨拶文に関連する関数群を提供するモジュール。

  ## 利用上の注意

   * 注意点。
   * 注意点。
  """

  @doc """
  `name` への挨拶文を出力する。
  """
  def hello(name) do
    IO.puts("Hello, #{name}!")
  end
end
