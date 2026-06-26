defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim_leading(name) |> String.trim(" ") |> String.at(0)
  end

  def initial(name) do
    String.upcase(first_letter(name)) <> "."
  end

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name, " ", parts: 2)
    initial(first_name) <> " " <> initial(last_name)
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤
    pair_sweetheart = initials(full_name1) <> "  +  " <> initials(full_name2)
    #"\n❤-------------------❤\n|  " <> pair_sweetheart <> "  |\n❤-------------------❤\n"
    "❤-------------------❤\n|  " <> pair_sweetheart <>  "  |\n❤-------------------❤\n"
  end
end
