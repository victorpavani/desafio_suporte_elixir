defmodule DesafioSuporteNovo do
  def main(_) do
    IO.puts("""
    Este programa ajuda a numerar corretamente os nomes dos reis e rainhas de Cumbúquia.
    Digite os nomes dos reis e rainhas, um por linha. Pressione Enter em uma linha vazia para finalizar:
    """)

    nomes = ler_nomes([])

    nomes
    |> numerar_nomes()
    |> ordenar_por_numero()
    |> Enum.each(&IO.puts/1)
  end

  defp ler_nomes(lista) do
    case IO.gets("") do
      "\n" -> Enum.reverse(lista)
      nome -> ler_nomes([String.trim(nome) | lista])
    end
  end

  def numerar_nomes(nomes) do
    nomes
    |> Enum.group_by(& &1)
    |> Enum.flat_map(fn {nome, ocorrencias} ->
      Enum.with_index(ocorrencias, 1)
      |> Enum.map(fn {_, index} -> "#{nome} #{to_roman(index)}" end)
    end)
  end

  def ordenar_por_numero(nomes) do
    Enum.sort_by(nomes, fn nome ->
      [nome_part, roman_part] = String.split(nome, " ")
      {to_integer(roman_part), nome_part}
    end)
  end

  def to_roman(number) do
    values = [
      {100, "C"},
      {90, "XC"},
      {50, "L"},
      {40, "XL"},
      {10, "X"},
      {9, "IX"},
      {5, "V"},
      {4, "IV"},
      {1, "I"}
    ]

    Enum.reduce(values, {number, ""}, fn {value, symbol}, {remaining, acc} ->
      count = div(remaining, value)
      {rem(remaining, value), acc <> String.duplicate(symbol, count)}
    end)
    |> elem(1)
  end

  def to_integer(roman) do
    values = %{
      "I" => 1,
      "IV" => 4,
      "V" => 5,
      "IX" => 9,
      "X" => 10,
      "XL" => 40,
      "L" => 50,
      "XC" => 90,
      "C" => 100
    }

    roman
    |> String.graphemes()
    |> Enum.reduce({0, 0}, fn char, {acc, last_value} ->
      value = Map.get(values, char, 0)

      if value > last_value do
        {acc + value - 2 * last_value, value}
      else
        {acc + value, value}
      end
    end)
    |> elem(0)
  end
end
