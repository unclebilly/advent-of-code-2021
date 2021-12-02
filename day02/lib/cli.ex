defmodule Day02.CLI do
  def main(args \\ []) do
    args
    |> parse_args()
    |> calculate()
    |> IO.puts()
  end

  defp calculate(options) do
    case options do
      {[], [filepath]} -> Day02.Part1.calculate_position(File.read!(filepath))
      {[step: 1], [filepath]} -> Day02.Part1.calculate_position(File.read!(filepath))
      {[step: 2], [filepath]} -> Day02.Part2.calculate_position(File.read!(filepath))
      _ -> help()
    end
  end

  defp help do
    "Usage: #{:escript.script_name()} [--step 1|2] PATH_TO_FILE"
  end

  defp parse_args(args) do
    {options, remains, _} = OptionParser.parse(args,
      switches: [step: :integer]
    )
    {options, remains}
  end
end
