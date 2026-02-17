defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    # Please implement the eat_ghost?/2 function
    if power_pellet_active? == true do
      if touching_ghost? == true do
        true
      else
        false
      end
    else
      false
    end
  end

  def score?(touching_power_pellet?, touching_dot?) do
    # Please implement the score?/2 function
    if touching_power_pellet? or touching_dot?, do: true, else: false
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    # Please implement the lose?/2 function
    if touching_ghost? == false do
      false
    else
      !Rules.eat_ghost?(power_pellet_active?, touching_ghost?)
    end
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    # Please implement the win?/3 function
    if (has_eaten_all_dots? == true and touching_ghost? == false) or
         power_pellet_active? == true do
      true
    end
  end
end
