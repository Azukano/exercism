defmodule BirdCount do
  def today([]), do: nil

  def today(list) do 
    [ head_list | tail_list ] = list
    head_list
  end
  
  def increment_day_count([]), do: [1]

  def increment_day_count(list) do
    [ _ | tail_list ] = list
    [ today(list) + 1 | tail_list ]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?(list), do: 0 in list 

  def total(list), do: Enum.sum(list)

  def busy_days(list), do: Enum.count(list, fn x -> x >= 5 end)
end

