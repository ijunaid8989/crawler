defmodule CralwerTest do
  use ExUnit.Case
  doctest Cralwer

  test "greets the world" do
    assert Cralwer.hello() == :world
  end
end
