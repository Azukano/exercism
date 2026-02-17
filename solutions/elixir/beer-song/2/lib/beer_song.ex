defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    # Your implementation here...\
    """
    #{verse_first_sentence(number)}
    #{verse_second_sentence(number)}
    """
  end

  def verse_first_sentence(number) when number > 1 and number < 100 do
    "#{number}" <> " bottles of beer on the wall, " <> "#{number}" <> " bottles of beer."
  end

  def verse_first_sentence(number) when number == 1 do
    "#{number}" <> " bottle of beer on the wall, " <> "#{number}" <> " bottle of beer."
  end

  def verse_first_sentence(number) when number == 0 do
    "No more bottles of beer on the wall, no more bottles of beer."
  end

  def verse_second_sentence(number) when number > 2 and number < 100 do
    "Take one down and pass it around, " <> "#{number - 1}" <> " bottles of beer on the wall."
  end

  def verse_second_sentence(number) when number == 2 do
    "Take one down and pass it around, " <> "#{number - 1}" <> " bottle of beer on the wall."
  end

  def verse_second_sentence(number) when number == 1 do
    "Take it down and pass it around, no more bottles of beer on the wall."
  end

  def verse_second_sentence(number) when number == 0 do
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range \\ 99..0) do
    # Your implementation here...
    start_to = Enum.to_list(range) |> List.first()
    end_to = Enum.to_list(range) |> List.last()
    IO.inspect(song_lyrics(start_to, end_to, []))
  end

  # def lyrics do
  #  song_lyrics(99, 0, [])
  # end

  def song_lyrics(to_sing, stop_sing, verses) when to_sing < stop_sing do
    Enum.join(verses, "\n")
  end

  def song_lyrics(to_sing, stop_sing, verses) when to_sing >= stop_sing do
    verses = verses ++ [verse(to_sing)]
    song_lyrics(to_sing - 1, stop_sing, verses)
  end
end
