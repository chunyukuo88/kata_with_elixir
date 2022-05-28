defmodule IdenticonTest do
  use ExUnit.Case
  import Identicon

  test "It can generate a hash of a string." do
    result = generate_hash("alex")
    expected_result =  %Identicon.Image{hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
   
    assert result == expected_result
  end

  @tag :skip
  test "It can generate a color based on the first three digits of an Identicon.Image struct." do
    image = %Identicon.Image{hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
    result = determine_color(image)
    expected_result = [ 83, 75, 68 ]

    assert result == expected_result
  end

  test "It can generate a grid based on an image containing a color and values." do
    image = %Identicon.Image{color: [83, 75, 68], hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
    result = build_grid(image)
    expected_result = [
      [83, 75, 68, 75, 83],
      [161, 155, 241, 155, 161],
      [141, 32, 183, 32, 141],
      [30, 204, 78, 204, 30],
      [183, 124, 87, 124, 183]
    ]

    assert result == expected_result
  end

  test "It takes a 3-item list and makes it a 5-item list by mirroring it around the third item." do
    row = [ 1, 2, 3]
    result = mirror_row(row)
    expected_result = [1, 2, 3, 2, 1]

    assert result == expected_result
  end
end
