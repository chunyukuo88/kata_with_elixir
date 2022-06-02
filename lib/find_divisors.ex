defmodule FindTheDivisors do
  def divisors(integer) do
    divs = for n <- 2..integer-1, rem(integer, n) == 0, do: n
    case divs do
      [] -> "#{integer} is prime"
      _ -> divs
    end
  end
end