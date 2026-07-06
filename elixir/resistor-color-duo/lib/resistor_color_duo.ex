defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """
  
  @resistor_color_maps %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    [color1, color2 | _] = colors
    (@resistor_color_maps[color1] |> Integer.to_string()) <> 
    (@resistor_color_maps[color2] |> Integer.to_string()) |> String.to_integer()
  end
end
