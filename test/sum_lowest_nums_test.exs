defmodule SumLowestNumsTest do
  use ExUnit.Case
  import SmallSummer

  test "It returns the sum of the two lowest numbers in a list" do
    numbers = [19, 5, 42, 2, 77]
    result = sum_two_smallest_numbers(numbers)

    assert result == 7
  end

  test "should work for basic tests" do
    assert sum_two_smallest_numbers([5, 8, 12, 19, 22]) == 13
    assert sum_two_smallest_numbers([15, 28, 4, 2, 43]) == 6
    assert sum_two_smallest_numbers([3, 87, 45, 12, 7]) == 10
    assert sum_two_smallest_numbers([23, 71, 33, 82, 1]) == 24
    assert sum_two_smallest_numbers([52, 76, 14, 12, 4]) == 16
  end
end