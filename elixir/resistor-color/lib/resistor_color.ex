defmodule ResistorColor do
  @doc """
  Return the value of a color band
  """
  @resistor_color_table {
    {:black, 0},
    {:brown, 1},
    {:red, 2},
    {:orange, 3},
    {:yellow, 4},
    {:green, 5},
    {:blue, 6},
    {:violet, 7},
    {:grey, 8},
    {:white, 9}
  }

  def getresistance(color, index) when color == elem(@resistor_color_table, index) |> elem(0) do
    elem(@resistor_color_table, index) |> elem(1)
  end

  def getresistance(color, index), do: getresistance(color, index + 1)

  @spec code(atom) :: integer()
  def code(color) do
    getresistance(color, 0)
  end
end
