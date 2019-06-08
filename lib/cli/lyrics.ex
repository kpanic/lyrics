defmodule Lyrics.CLI do
  def main(args \\ []) do
    args
    |> parse_args
    |> IO.puts()
  end

  defp parse_args(args) do
    case OptionParser.parse(args, strict: []) do
      {[], [artist, title], []} ->
        Lyrics.get(artist, title)

      _ ->
        help()
    end
  end

  defp help do
    """
    lyrics accepts two arguments: the Artist name and the song name

    For example, execute:

    lyrics "Velvet Underground" "Sunday morning"
    """
  end
end
