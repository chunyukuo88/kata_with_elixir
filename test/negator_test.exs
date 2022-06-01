defmodule TestNegator do
  use ExUnit.Case
  import Negator, only: [make_negative: 1]

  test "It returns the negative equivalent of a positive number." do
    assert make_negative(42) == -42
  end
  test "If the number is already negative, return it unchanged." do
    assert make_negative(-42) == -42
  end
end
