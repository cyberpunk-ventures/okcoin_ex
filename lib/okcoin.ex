defmodule Okcoin do
  use HTTPoison.Base

  def ticker(left, right \\ "cny") do
    hostname  = String.to_char_list(URI.parse("https://okcoin.cn/api/v1").host)
    http_options = [folllow_redirect: true, ssl: [server_name_indication: hostname]]
    {:ok, response } = Okcoin.get("/ticker.do?symbol=#{left}_#{right}", [], http_options  )

    {:ok, response.body}
  end


  def process_url(url) do
      key = Application.get_env(:okcoin_ex, :api_key)
      "https://www.okcoin.cn/api/v1" <> url
  end

  def process_response_body(body) do

    body |> Poison.decode!

  end


end
