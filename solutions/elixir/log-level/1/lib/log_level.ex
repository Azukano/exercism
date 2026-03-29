defmodule LogLevel do

  def to_label(level, legacy?) when legacy? == false  do
    cond do
      level == 0 ->
        :trace
      level == 1 ->
        :debug
      level == 2 ->
        :info
      level == 3 ->
        :warning
      level == 4 ->
        :error
      level == 5 ->
        :fatal
      true ->
        :unknown
    end
  end

  def to_label(level, legacy?) when legacy? == true  do
    cond do
      level == 1 ->
        :debug
      level == 2 ->
        :info
      level == 3 ->
        :warning
      level == 4 ->
        :error
      true ->
        :unknown
    end
  end

  def alert_recipient(level, legacy?) when level == 6 and not legacy? do
    :dev2
  end

  def alert_recipient(level, legacy?) do
    case to_label(level, legacy?) do
      :fatal ->
        :ops
      :error ->
        :ops
      :unknown ->
        :dev1
      _ ->
        :false
    end
  end

 end
