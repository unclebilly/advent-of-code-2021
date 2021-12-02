defmodule Day02.Part2 do
  @moduledoc """
  Documentation for `Day02.Part2`.
  """

  defmodule Position do
    defstruct vertical: 0, horizontal: 0, aim: 0
  end

  @doc """
  Day 2 of Advent of Code 2021

  ## Examples

      iex> Day02.Part2.calculate_position("")
      0

      iex> input = "
      ...> forward 5
      ...> down 5
      ...> forward 8
      ...> up 3
      ...> down 8
      ...> forward 2
      ...> "
      ...> Day02.Part2.calculate_position(input)
      900

  """
  def calculate_position(data) do
    result = Enum.reduce(parse_data(data), %Position{}, fn({command, value}, acc) ->
      case command do
        :forward -> %{acc | horizontal: acc.horizontal + value, vertical: acc.vertical + acc.aim * value}
        :down -> %{acc | aim: acc.aim + value}
        :up -> %{acc | aim: acc.aim - value}
      end
    end)
    result.horizontal * result.vertical
  end

  def parse_data(data) when is_nil(data), do: []
  def parse_data(data) do
    String.split(data, "\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&parse_line/1)
    |> Enum.reject(&is_nil/1)
  end

  defp parse_line(line) when line == "", do: nil
  defp parse_line(line) do
    [command, value] = String.split(line, " ")
    {String.to_atom(command), String.to_integer(value)}
  end
end
