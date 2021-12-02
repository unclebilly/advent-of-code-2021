defmodule Day02.Part2Test do
  use ExUnit.Case
  doctest Day02.Part2

  test "parses data" do
    expected = [
      {:forward, 5},
      {:down, 5},
      {:forward, 8},
      {:up, 3},
      {:down, 8},
      {:forward, 2}
    ]
    assert Day02.Part1.parse_data(testdata()) == expected
  end

  test "parses blank data" do
    expected = []
    assert Day02.Part2.parse_data("") == expected
  end

  def testdata do
    File.read!("testdata1.txt")
  end
end
