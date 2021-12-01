defmodule Day01 do
  def main(_args) do
    IO.puts inspect(count_increases())
    IO.puts inspect(count_increases(windowed_sums()))
  end

  def count_increases(arr \\ input()) do
    Enum.reduce(0..length(arr)-1, fn(index, acc) ->
      [prev, current] = Enum.slice(arr, index - 1, 2)
      cond do
        current - prev > 0 -> acc + 1
        true -> acc
      end
    end)
  end

  def windowed_sums do
    Enum.chunk_every(input(), 3, 1, :discard) |> Enum.map(&Enum.sum/1)
  end

  def input do
    json = File.read!("input.json")
    JSON.decode!(json)
  end
end
