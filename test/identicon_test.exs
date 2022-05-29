defmodule IdenticonTest do
  use ExUnit.Case
  import Identicon


  test "It can generate a grid based on an image containing a color and values." do
    image = %Identicon.Image{color: [83, 75, 68], hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
    output = build_grid(image)
    expected_output = [
      {83, 0}, {75, 1}, {68, 2}, {75, 3}, {83, 4},
      {161, 5}, {155, 6}, {241, 7}, {155, 8}, {161, 9},
      {141, 10}, {32, 11}, {183, 12}, {32, 13}, {141, 14},
      {30, 15}, {204, 16}, {78, 17}, {204, 18}, {30, 19},
      {183, 20}, {124, 21}, {87, 22}, {124, 23}, {183, 24},
    ]

    assert output == expected_output
  end

  test "It can generate a hash of a string." do
    result = generate_hash("alex")
    expected_result =  %Identicon.Image{hex: [83, 75, 68, 161, 155, 241, 141, 32, 183, 30, 204, 78, 183, 124, 87, 47]}
   
    assert result == expected_result
  end

  test "It takes a 3-item list and makes it a 5-item list by mirroring it around the third item." do
    row = [ 1, 2, 3]
    result = mirror_row(row)
    expected_result = [1, 2, 3, 2, 1]

    assert result == expected_result
  end
end
