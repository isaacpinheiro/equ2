defmodule Equ2 do

  def calc(a, b, c) do
    delta = calc_delta(a, b, c)
    {x1, x2} = calc_x(a, b, delta)
    {delta, x1, x2}
  end

  defp calc_delta(a, b, c) do
    ((:math.pow(b, 2))-(4*a*c))
  end

  defp calc_x(a, b, delta) when delta >= 0 do
    x1 = ((-b+:math.sqrt(delta))/(2*a))
    x2 = ((-b-:math.sqrt(delta))/(2*a))
    {x1, x2}
  end

  defp calc_x(_, _, delta) do
    {nil, nil}
  end

end
