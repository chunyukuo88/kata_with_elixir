defmodule KataWithElixirTest do
  use ExUnit.Case
  doctest KataWithElixir

  test "greets the world" do
    assert KataWithElixir.hello() == :world
  end
end
