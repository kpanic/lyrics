defmodule Lyrics.Backend.Youtube do
  @youtube_url "https://www.youtube.com"
  def get(artist, title) do
    url =
      "#{@youtube_url}/results?search_query=#{URI.encode_www_form(artist)}%20#{
        URI.encode_www_form(title)
      }"

    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get(url)

    video_path =
      body
      |> Floki.find(".yt-lockup-title a")
      |> Floki.attribute("href")
      |> List.first()

    "#{@youtube_url}#{video_path}"
  end
end
