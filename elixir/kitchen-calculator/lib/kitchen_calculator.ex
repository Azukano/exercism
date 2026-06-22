defmodule KitchenCalculator do

  @conversion_table { 
    {:milliliter, 1},
    {:cup, 240},
    {:fluid_ounce, 30}, 
    {:teaspoon, 5}, 
    {:tablespoon, 15} 
  }

  def get_volume(volume_pair) do 
    { unit, vol } = volume_pair 
    vol    
  end

  def to_milliliter(volume_pair) do
    { unit, vol } = volume_pair
    cond do
      unit == elem(@conversion_table, 0) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 0) |> elem(1)) }
      unit == elem(@conversion_table, 1) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 1) |> elem(1)) }
      unit == elem(@conversion_table, 2) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 2) |> elem(1)) }
      unit == elem(@conversion_table, 3) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 3) |> elem(1)) }
      unit == elem(@conversion_table, 4) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 4) |> elem(1)) }
      unit == elem(@conversion_table, 5) |> elem(0)   
        -> { :milliliter, vol * (elem(@conversion_table, 5) |> elem(1)) }
    end
  end

  def from_milliliter(volume_pair, unit) do
    { _, vol } = volume_pair
    cond do
      unit == elem(@conversion_table, 0) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 0) |> elem(1)) }
      unit == elem(@conversion_table, 1) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 1) |> elem(1)) }
      unit == elem(@conversion_table, 2) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 2) |> elem(1)) }
      unit == elem(@conversion_table, 3) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 3) |> elem(1)) }
      unit == elem(@conversion_table, 4) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 4) |> elem(1)) }
      unit == elem(@conversion_table, 5) |> elem(0)   
        -> { unit, vol / (elem(@conversion_table, 5) |> elem(1)) }
    end
  end

  def convert(volume_pair, unit) do
    { unit, get_volume(to_milliliter(volume_pair)) / get_volume(to_milliliter({unit, 1})) }
  end
end
