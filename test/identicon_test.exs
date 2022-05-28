defmodule IdenticonTest do
  use ExUnit.Case
  import Identicon

  test "It can generate a hash of a string." do
    result = generate_hash("alex")
    expected_result =  %Identicon.Image{hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
   
    assert result == expected_result
  end

  
end
