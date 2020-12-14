1..100
|> Enum.reduce(%{fizz: 0, buzz: 0, fizz_buzz: 0}, fn n, acc ->
  cond do
    rem(n, 15) == 0 -> %{acc | fizz_buzz: acc.fizz_buzz + 1}
    rem(n, 5) == 0 -> %{acc | buzz: acc.buzz + 1}
    rem(n, 3) == 0 -> %{acc | fizz: acc.fizz + 1}
    true -> acc
  end
end)
|> IO.inspect()
