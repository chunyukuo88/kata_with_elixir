_ = "https://www.codewars.com/kata/544675c6f971f7399a000e79"

defmodule NumerifyTest do
  use ExUnit.Case
  import Numerify

  test "It converts a string to a number" do
    result = string_to_number("123")
    assert result == 123
  end  
end
