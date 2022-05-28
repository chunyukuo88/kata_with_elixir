defmodule Identicon do
  def generate_hash(word) do
    hash = :crypto.hash(:md5, word)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hash}
  end

  def determine_color(image) do
    %Identicon.Image{hex: hex_list} = image
    [r, g, b | _tail] = hex_list
    [r, g, b]
  end
end
