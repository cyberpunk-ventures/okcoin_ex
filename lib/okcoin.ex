defmodule Okcoin do
  use HTTPoison.Base

  def ticker(left, right \\ "CNY") do
    {:ok, response } = Okcoin.get("/ticker.do?symbol=#{left}_#{right}")
    {:ok, response.body}
  end


  def process_url(url) do
      key = Application.get_env(:okcoin_ex, :api_key)
      "https://okcoin.cn/api/v1" <> url
  end

  def process_response_body(body) do
     body |> Poison.decode!
  end


end
