defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    increment_process(number, 1, 0, 0, 0, 0)
  end

  def increment_process(number, i, j, k, l, m) when i > number do
    IO.puts("end: 4th: #{m} 3rd: #{l} 2nd: #{k}, 1st: #{j}")
    number = numeral_4(m) <> numeral_3(l) <> numeral_2(k) <> numeral_1(j)
  end

  def increment_process(number, i, j, k, l, m) do
    IO.puts("#{number} #{i} 4th:#{m} 3rd:#{l} 2nd:#{k}, 1st:#{j}")
    IO.inspect({j, k, l, m})
    case {l, k, j} do
      {9, 9, 9} ->
        increment_process(number, i + 1, j - 9, k - 9, l - 9, m + 1)
      {_, 9, 9} ->
        increment_process(number, i + 1, j - 9, k - 9, l + 1, m)
      {_, _, 9} ->
        increment_process(number, i + 1, j - 9, k + 1, l, m)
      _ ->
        increment_process(number, i + 1, j + 1, k, l, m)
    end
  end

  def numeral_1(j) do
    case j do
      1 -> j = "I"
      2 -> j = "II"
      3 -> j = "III"
      4 -> j = "IV"
      5 -> j = "V"
      6 -> j = "VI"
      7 -> j = "VII"
      8 -> j = "VIII"
      9 -> j = "IX"
      _ -> j = ""
    end
  end

  def numeral_2(k) do
    case k do
      1 -> k = "X"
      2 -> k = "XX"
      3 -> k = "XXX"
      4 -> k = "XL"
      5 -> k = "L"
      6 -> k = "LX"
      7 -> k = "LXX"
      8 -> k = "LXXX"
      9 -> k = "XC"
      _ -> k = ""
    end
  end

  def numeral_3(l) do
    case l do
      1 -> l = "C"
      2 -> l = "CC"
      3 -> l = "CCC"
      4 -> l = "CD"
      5 -> l = "D"
      6 -> l = "DC"
      7 -> l = "DCC"
      8 -> l = "DCCC"
      9 -> l = "CM"
      _ -> l = ""
    end
  end

  def numeral_4(m) do
    case m do
      1 -> m = "M"
      2 -> m = "MM"
      3 -> m = "MMM"
      _ -> m = ""
    end
  end

end
