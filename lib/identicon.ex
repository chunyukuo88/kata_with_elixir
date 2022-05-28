defmodule Identicon do
  def generate_hash(word) do
    hash = :crypto.hash(:md5, word)
    :binary.bin_to_list(hash)
  end
end
