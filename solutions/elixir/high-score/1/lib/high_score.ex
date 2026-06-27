defmodule HighScore do
  def new() do
    %{}
  end

  def add_player(scores, name) when map_size(scores) == 0  do
    scores = new()
    add_player(scores, name, 0)
  end

  def add_player(scores, name) do
    add_player(scores, name, 0)
  end

  def add_player(scores, name, score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    remove_player(scores, name) |> add_player(name)
  end

  def update_score(scores, name, score) when is_map_key(scores, name) do
    %{name => scores[name] + score}
  end
  
  def update_score(scores, name, score) do
    %{name => score}
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
