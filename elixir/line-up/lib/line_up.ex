defmodule LineUp do
  @doc """
  Formats a full ticket sentence for the given name and number, including
  the person's name, the ordinal form of the number, and fixed descriptive text.
  """
  @spec format(name :: String.t(), number :: pos_integer()) :: String.t()
  def format(name, number) do
    last_2_digit =  number |> Integer.digits() |> Enum.take(-2) |> Integer.undigits()
    ordinal_nbr = unless last_2_digit > 10 and last_2_digit < 14 do 
      last_digit = number |> Integer.to_string() |> String.last()
      case last_digit do
        "1" -> "st"
        "2" -> "nd"
        "3" -> "rd"
        _ -> "th"
      end
    else
      "th"
    end
    name <> ", you are the " <> Integer.to_string(number) <> ordinal_nbr 
      <> " customer we serve today. Thank you!"
  end
end
