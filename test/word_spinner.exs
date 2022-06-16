# https://www.codewars.com/kata/5264d2b162488dc400000001/train/elixir

defmodule TestSolution do
  use ExUnit.Case

  test "Have fun!" do
    assert Spin.spin_words("Have fun!") == "Have fun!"
  end

  test "Welcome is reversed" do
    assert Spin.spin_words("Welcome") == "emocleW"
  end

  test "First word is not reversed" do
    assert Spin.spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
  end

end