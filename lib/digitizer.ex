

defmodule Digitizer do
  def digitize(n) do
    if n == 0, do: [0]
    n
    |> Integer.to_string
    |> String.graphemes
    |> Enum.reverse
    |> Enum.map(&String.to_integer/1)
  end
end
