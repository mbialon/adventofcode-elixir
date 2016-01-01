defmodule Day1 do
  def floor(str) do
    _floor(str, 0)
  end

  defp _floor("(" <> t, floor) do
    _floor(t, floor + 1)
  end

  defp _floor(")" <> t, floor) do
    _floor(t, floor - 1)
  end

  defp _floor("", floor) do
    floor
  end
end
