defmodule Identicon do
  def generate_hash(word) do
    hash = :crypto.hash(:md5, word)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hash}
  end

  def determine_color(image) do
    %Identicon.Image{hex: [r, g, b | _tail]} = image
    %Identicon.Image{image | color: {r, g, b}}
  end

  def mirror_row([first_item, second_item | _tail] = row) do
    row ++ [second_item, first_item]
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk(3)
    |> Enum.map(&mirror_row/1)
  end
end
