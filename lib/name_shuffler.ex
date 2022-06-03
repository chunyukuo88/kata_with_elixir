defmodule Messy do
  def name_shuffler(str) do
    String.split(str, " ", trim: true)
    |> Enum.reverse
    |> Enum.join " "
  end
end
