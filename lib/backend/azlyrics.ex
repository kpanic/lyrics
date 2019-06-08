defmodule Lyrics.Backend.AZLyrics do
  def get(artist, title) do
    artist = Regex.replace(~r/[^A-Za-z0-9]+/, artist, "")
    title = Regex.replace(~r/[^A-Za-z0-9]+/, title, "")

    url = "http://azlyrics.com/lyrics/#{String.downcase(artist)}/#{String.downcase(title)}.html"

    up_partition =
      "<!-- Usage of azlyrics.com content by any third-party lyrics provider is prohibited by our licensing agreement. Sorry about that. -->"

    down_partition = "<!-- MxM banner -->"

    {:ok, %HTTPoison.Response{body: body}} =
      url
      |> HTTPoison.get([], [{:follow_redirect, true}])

    body
    |> String.split(up_partition)
    |> List.last()
    |> String.split(down_partition)
    |> List.first()
    |> Floki.text()
    |> String.replace(~r/\n\n/, "\n")
  end
end
