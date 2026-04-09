defmodule Darts do
  @type position :: {number, number}

  @spec score(position) :: integer
  def score({x, y}) do
    radius = x * x + y * y 
    |> :math.sqrt
    cond do
      radius > 10 ->
        0
      radius > 5 ->
        1
      radius > 1 ->
        5
      radius >= 0 ->
        10
    end
  end
end
