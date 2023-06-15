defmodule ElixirApiRestaurantTest do
  use ExUnit.Case
  doctest ElixirApiRestaurant

  test "greets the world" do
    assert ElixirApiRestaurant.hello() == :world
  end
end
