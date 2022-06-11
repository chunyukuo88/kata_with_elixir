defmodule Countdigit do

  def nb_dig(n, d) do
    for int <- 0..n, do: :math.pow(int, 2)
    |> IO.puts
    end
  
end

