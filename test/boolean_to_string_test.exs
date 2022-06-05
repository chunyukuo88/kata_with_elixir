defmodule TestSuite do
  use ExUnit.Case
  
  test "Sample tests" do
    Enum.each([
      {true, "true"},
      {false, "false"}
    ], fn {b, expected} ->
      actual = BooleanToStringKata.boolean_to_string(b)
      assert actual == expected
    end)
  end
end
