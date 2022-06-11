defmodule Countdigit do
  def nb_dig(n, d) do
    digit_as_string = Integer.to_string(d)
    numbers = for int <- 0..n, do: Kernel.trunc(:math.pow(int, 2))
    numbers
    |> Enum.map(fn(num) -> count_digit_occurrences(num, digit_as_string) end)
    |> Enum.sum
    end

  def count_digit_occurrences(num, digit_as_string) do
    num_as_string = Integer.to_string(num)
    num_as_list = String.graphemes(num_as_string)
    Enum.count(num_as_list, fn(num_digit) -> num_digit == digit_as_string end)
  end
end
