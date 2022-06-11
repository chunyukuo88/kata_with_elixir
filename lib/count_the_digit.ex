defmodule Countdigit do
  def nb_dig(n, d) do
    numbers = for int <- 0..n, do: :math.pow(int, 2)
    numbers
    |> Enum.filter(fn num -> contains_digit(n, d) end)
    end

  def contains_digit(num, digit) do
    digit_as_string = Integer.to_string(digit)
    num_as_string = Integer.to_string(num)
    num_as_list = String.graphemes(num_as_string)
    Enum.member?(num_as_list, digit_as_string)
  end
end
