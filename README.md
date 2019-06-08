# Lyrics

Lyrics is a program to fetch a video about a song and their lyrics.
Is it meant for my personal use, however if you find it useful, please use it!

Lyrics is scraping two public services to gather data.
I would consider it for personal use and entertainment

## Example

Text output

```elixir
iex(1)> IO.puts Lyrics.get("Led Zeppelin", "When the Levee Breaks")
Youtube video:

https://www.youtube.com/watch?v=b97hqSDRspw

Lyrics:


If it keeps on rainin', levee's goin' to break
If it keeps on rainin', levee's goin' to break
When the levee breaks I'll have no place to stay

Mean old levee taught me to weep and moan
Mean old levee taught me to weep and moan
It's got what it takes to make a mountain man leave his home
Oh, well, oh, well, oh, well

Don't it make you feel bad
When you're tryin' to find your way home
You don't know which way to go?
If you're goin' down South
They got no work to do,
If you don't know about Chicago

Cryin' won't help you, prayin' won't do you no good
Now, cryin' won't help you, prayin' won't do you no good
When the levee breaks, mama, you got to move

All last night sat on the levee and moaned
All last night sat on the levee and moaned
Thinkin' about my baby and my happy home

Going, going to Chicago...
Going to Chicago...
Sorry but I can't take you...
Going down... going down now... going down....


:ok
```

Map output

```elixir
iex(1)> Lyrics.get("Led Zeppelin", "When the Levee Breaks", :map)
%{
  lyrics: "\r\nIf it keeps on rainin', levee's goin' to break\nIf it keeps on rainin', levee's goin' to break\nWhen the levee breaks I'll have no place to stay\n\nMean old levee taught me to weep and moan\nMean old levee taught me to weep and moan\nIt's got what it takes to make a mountain man leave his home\nOh, well, oh, well, oh, well\n\nDon't it make you feel bad\nWhen you're tryin' to find your way home\nYou don't know which way to go?\nIf you're goin' down South\nThey got no work to do,\nIf you don't know about Chicago\n\nCryin' won't help you, prayin' won't do you no good\nNow, cryin' won't help you, prayin' won't do you no good\nWhen the levee breaks, mama, you got to move\n\nAll last night sat on the levee and moaned\nAll last night sat on the levee and moaned\nThinkin' about my baby and my happy home\n\nGoing, going to Chicago...\nGoing to Chicago...\nSorry but I can't take you...\nGoing down... going down now... going down....\n\n",
  youtube: "https://www.youtube.com/watch?v=b97hqSDRspw"
}
```

## Escript

If you want to build the `escript` (an executable that can run with only erlang installed) run:

```elixir
mix escript.build
```

The `lyrics` binary will be generated in the root folder of the project.
You can invoke the `lyrics` binary by copying it in a folder in your path or
directly from the root folder of the project:

```bash
./lyrics "Velvet Underground" "Sunday morning"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `lyrics` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:lyrics, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/lyrics](https://hexdocs.pm/lyrics).

