defmodule Countdigit do
  def nb_dig(n, d) do
    squares = for int <- 0..n, do: Kernel.trunc(:math.pow(int, 2))
    squares
    |> Enum.map(fn(num) -> count_digit_occurrences(num, Integer.to_string(d)) end)
    |> Enum.sum
  end

  def count_digit_occurrences(num, digit_as_string) do
    num
    |> Integer.to_string
    |> String.graphemes
    |> Enum.count(fn(num_digit) -> num_digit == digit_as_string end)
  end
end
