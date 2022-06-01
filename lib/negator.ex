defmodule Negator do
  def make_negative(number) do
    if (number > 0), do: number * -1, else: number
  end
end
