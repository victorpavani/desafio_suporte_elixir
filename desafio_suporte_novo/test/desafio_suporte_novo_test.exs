defmodule DesafioSuporteNovoTest do
  use ExUnit.Case

  test "conversão de números para romanos" do
    assert DesafioSuporteNovo.to_roman(1) == "I"
    assert DesafioSuporteNovo.to_roman(4) == "IV"
    assert DesafioSuporteNovo.to_roman(9) == "IX"
    assert DesafioSuporteNovo.to_roman(40) == "XL"
    assert DesafioSuporteNovo.to_roman(50) == "L"
    assert DesafioSuporteNovo.to_roman(90) == "XC"
    assert DesafioSuporteNovo.to_roman(100) == "C"
  end

  test "conversão de romanos para números" do
    assert DesafioSuporteNovo.to_integer("I") == 1
    assert DesafioSuporteNovo.to_integer("IV") == 4
    assert DesafioSuporteNovo.to_integer("IX") == 9
    assert DesafioSuporteNovo.to_integer("XL") == 40
    assert DesafioSuporteNovo.to_integer("L") == 50
    assert DesafioSuporteNovo.to_integer("XC") == 90
    assert DesafioSuporteNovo.to_integer("C") == 100
  end

  test "numerar nomes corretamente" do
    nomes = ["Eduardo", "Maria", "Daniel", "Eduardo"]
    resultado = DesafioSuporteNovo.numerar_nomes(nomes)
    assert resultado == ["Daniel I", "Eduardo I", "Eduardo II", "Maria I"]
  end

  test "ordenar nomes por número romano" do
    nomes = ["Eduardo II", "Eduardo I", "Maria I", "Daniel I"]
    resultado = DesafioSuporteNovo.ordenar_por_numero(nomes)
    assert resultado == ["Daniel I", "Eduardo I", "Maria I", "Eduardo II"]
  end
end
