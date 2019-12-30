defmodule TestLoggerTest do
  use ExUnit.Case
  doctest TestLogger

  test "greets the world" do
    assert TestLogger.hello() == :world
  end
end
