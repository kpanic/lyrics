defmodule Lyrics do
  def get(artist, title, output \\ :ascii)

  def get(artist, title, :ascii) do
    Enum.join(
      [
        "Youtube video:",
        Lyrics.Backend.Youtube.get(artist, title),
        "Lyrics:",
        Lyrics.Backend.AZLyrics.get(artist, title)
      ],
      "\n\n"
    )
  end

  def get(artist, title, _) do
    %{
      lyrics: Lyrics.Backend.AZLyrics.get(artist, title),
      youtube: Lyrics.Backend.Youtube.get(artist, title)
    }
  end
end
