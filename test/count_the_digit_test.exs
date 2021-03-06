#https://www.codewars.com/kata/566fc12495810954b1000030/train/elixir


defmodule CountdigitTest do
  
  use ExUnit.Case
  import Countdigit

  defp testing(numtest, num, d, ans) do 
    IO.puts("Test ##{numtest}")
    assert nb_dig(num, d) == ans
  end
  test "nb_dig" do 
    testing(1, 5750, 0, 4700)
    testing(2, 11011, 2, 9481)
    testing(3, 12224, 8, 7733)
    testing(4, 11549, 1, 11905)
  end
end