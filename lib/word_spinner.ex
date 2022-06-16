#https://www.codewars.com/kata/5264d2b162488dc400000001/train/elixir

######### My best solution: #########
defmodule Spin do
  def spin_words(message) do
    message |> String.split
    |> Enum.map(fn word -> conditionally_reverse(word) end)
    |> Enum.join(" ")
  end

  def conditionally_reverse(word) do
    if String.length(word) >= 5, do: String.reverse(word), else: word
  end
end

######### My favorite  solution from Codewars: #########

#defmodule Spin do
#  def spin_words(message) do
#    message
#    |> String.split(" ")
#    |> Enum.map_join(" ", &(String.length(&1) >= 5 && String.reverse(&1) || &1))
#  end
#end