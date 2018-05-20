defmodule RagnarokTest do
  use ExUnit.Case
  doctest Ragnarok

  test "greets the world" do
    assert Ragnarok.hello() == :world
  end
end
