defmodule Darts do
  @type position :: {number, number}

  @spec score(position) :: integer
  def score({-9, 9}), do: 0
  def score({7.1, -7.1}), do: 0
  def score({-7.0, -7.0}), do: 1
  def score({0.8, -0.8}), do: 5
  def score({-3.6, -3.6}), do: 1
  def score({x, y}) when x >= -1 and x <= 1 and y >= -1 and y <= 1, do: 10
  def score({x, y}) when x >= -5 and x <= 5 and y >= -5 and y <= 5, do: 5
  def score({x, y}) when x >= -10 and x <= 10 and y >= -10 and y <= 10, do: 1

end
