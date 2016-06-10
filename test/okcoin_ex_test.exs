defmodule OkcoinExTest do
  use ExUnit.Case, async: true
  doctest Okcoin

  test "get ticker for BTC" do
    {:ok, ticker_data} = Okcoin.ticker("BTC", "CNY")
    assert ticker_data == %{}
  end
end
