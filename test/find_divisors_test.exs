defmodule FindTheDivisorsTest do
  use ExUnit.Case
  import FindTheDivisors, only: [divisors: 1]

  test "fizzbuzz" do
    assert divisors(15) == [3, 5]
  end

  test "12" do
    assert divisors(12) == [2, 3, 4, 6]
  end

  test "prime number" do
    assert divisors(13) == "13 is prime"
  end
end