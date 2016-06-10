defmodule Okcoin do
  use HTTPoison

  def process_url(url) do
      key = Application.get_env(:okcoin_ex, :api_key)

      "https://okcoin.cn/api/v1" <> url
  end


end
