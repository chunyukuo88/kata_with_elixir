# https://www.codewars.com/kata/558fc85d8fd1938afb000014/train/elixir

defmodule SmallSummer do
  def sum_two_smallest_numbers(numbers) do
    [ a, b | _tail ] = Enum.sort(numbers)
    a + b
  end
end