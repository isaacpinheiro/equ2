defmodule Equ2Test do
  use ExUnit.Case
  doctest Equ2

  test "the truth" do
    assert Equ2.calc(1, 4, 4) == {0, -2, -2}
    assert Equ2.calc(1, 1, 1) == {-3, nil, nil}
  end
end
