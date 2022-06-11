defmodule MessyTest do
  use ExUnit.Case
  import Messy, only: [name_shuffler: 1]

  test "It switches the order of the first and last name." do
    input = "john McClane"
    expected = "McClane john"
    
    result = name_shuffler(input)

    assert result == expected
  end
end
