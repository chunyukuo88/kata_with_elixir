# https://www.codewars.com/kata/5601409514fc93442500010b/train/elixir

defmodule Detector do
  def better_than_average(class_points, your_points) do
    average = get_average(class_points)
    your_points > average
  end

  def get_average(array_of_nums) do
    Enum.reduce(array_of_nums, 0, fn x, acc -> x + acc end)
    |> Kernel./length(array_of_nums)
  end
end

