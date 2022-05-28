defmodule Numerify do
  def string_to_number(numberAsString) do
    case Integer.parse(numberAsString) do
      {int, _} -> int
      :error -> "Please enter an integer as a string."
    end
  end
end
