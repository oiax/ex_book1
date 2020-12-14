defmodule Helpers do
  def to_bits(bitstring) do
    bs = bit_size(bitstring)
    <<number::size(bs)>> = bitstring

    number
    |> Integer.to_string(2)
    |> String.pad_leading(bs, "0")
    |> insert_spaces(4)
  end

  def to_hex(binary) do
    s = byte_size(binary)
    bs = s * 8
    <<number::size(bs)>> = binary

    number
    |> Integer.to_string(16)
    |> String.pad_leading(s * 2, "0")
    |> insert_spaces(2)
  end

  defp insert_spaces(str, count) do
    str
    |> String.codepoints()
    |> Enum.chunk_every(count)
    |> Enum.map(&Enum.join/1)
    |> Enum.join(" ")
  end
end
