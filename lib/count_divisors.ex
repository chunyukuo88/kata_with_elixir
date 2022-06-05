# https://www.codewars.com/kata/542c0f198e077084c0000c2e/train/elixir

defmodule CountDivisorsKata do
  def divisors(n) do
    list = for x <- 1..n, rem(n, x) == 0, do: x
    list |> Enum.count
#    Enum.count(list)
  end
end
