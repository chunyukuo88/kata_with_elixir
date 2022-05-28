defmodule IdenticonTest do
  use ExUnit.Case
  import Identicon

  test "It can generate a 5x5 two-dimensional grid." do
    result = generate_grid()
    expected_result = [
      [true, true, true, true, true],
      [true, true, true, true, true],
      [true, true, true, true, true],
      [true, true, true, true, true],
      [true, true, true, true, true],
    ]

    assert result == expected_result
  end
end
