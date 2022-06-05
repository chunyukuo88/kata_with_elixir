# https://www.codewars.com/kata/542c0f198e077084c0000c2e/train/elixir

defmodule CountDivisorsKata do
  def divisors(n) do
    result = {n}
    divisors = [1, n]
    for i <- 1..n, rem(n, i) == 0, do: [n | divisors]
    number_of_divisors = length(divisors)
    Tuple.append(result, number_of_divisors)
  end
end
