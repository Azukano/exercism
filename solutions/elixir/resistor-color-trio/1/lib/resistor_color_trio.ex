defmodule ResistorColorTrio do
  @doc """
  Calculate the resistance value in ohms from resistor colors
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

  @spec label(colors :: [atom]) :: {number, :ohms | :kiloohms | :megaohms | :gigaohms}
  def label(colors) do
    [first_color, second_color, third_color | _] = colors
    resistance = (@resistor_color_maps[first_color] * 10 + @resistor_color_maps[second_color]) 
    multiplier = Integer.pow(10, @resistor_color_maps[third_color]) 
    total_resistance = resistance * multiplier
    cond do
      total_resistance > 99 and total_resistance < 1000 -> { resistance * 10, :ohms }
      total_resistance < 1000 -> { resistance, :ohms }
      total_resistance > 99999 and total_resistance < 1000000 -> { resistance * 10, :kiloohms }
      total_resistance < 1000000 and second_color == :black -> { resistance / 10, :kiloohms }
      total_resistance < 1000000 -> { resistance, :kiloohms }
      total_resistance < 1000000000 -> { resistance, :megaohms }
      total_resistance < 1000000000000 -> { resistance, :gigaohms }
      :true -> :default
    end  
  end
end
